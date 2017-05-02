#include "SDK/amx/amx.h"
#include "SDK/plugincommon.h"
#include "curl/curl.h"
#include <string>
#include <unistd.h>

#define SCL_V "SCLibrary 1.0"

typedef void (*logprintf_t)(char * format, ...);

logprintf_t logprintf;
extern void * pAMXFunctions;

size_t write_data(void *ptr, size_t size, size_t nmemb, FILE * stream)
{
    return fwrite(ptr,size,nmemb,stream);
}

std::string getServerDir()
{
    char * buf=new char[128];
#ifdef LINUX
    readlink("/proc/self/exe",buf,128);
#elif defined WIN32

#endif
    std::string str(buf);
    delete [] buf;
    return str;
}

void _downloadFile(std::string url)
{
    CURL * curl;
    FILE * fp;
    CURLcode res;

    std::string output=url;
    output.erase(0,output.find_last_of('/')+1);
    logprintf("  [SCLib] Downloading file: %s",output.c_str());

    curl=curl_easy_init();
    if(curl)
    {
        fp=fopen(output.c_str(),"wb");
        curl_easy_setopt(curl,CURLOPT_URL,url.c_str());
        curl_easy_setopt(curl,CURLOPT_WRITEFUNCTION,write_data);
        curl_easy_setopt(curl,CURLOPT_WRITEDATA,fp);
        res=curl_easy_perform(curl);

        curl_easy_cleanup(curl);
        fclose(fp);
    }
}

cell AMX_NATIVE_CALL downloadFile(AMX * amx, cell * params)
{
int len=NULL;
int ret=NULL;
cell * addr=NULL;
amx_GetAddr(amx,params[1],&addr);
amx_StrLen(addr,&len);
if(len)
{
len++;

char * text=new char[len];
amx_GetString(text,addr,0,len);
std::string url(text);
delete [] text;
_downloadFile(url);
return 0;
}
return 1;
}

PLUGIN_EXPORT unsigned int PLUGIN_CALL Supports()
{
    return SUPPORTS_VERSION|SUPPORTS_AMX_NATIVES;
}

PLUGIN_EXPORT bool PLUGIN_CALL Load(void **ppData)
{
    pAMXFunctions = ppData[PLUGIN_DATA_AMX_EXPORTS];
    logprintf=(logprintf_t)ppData[PLUGIN_DATA_LOGPRINTF];

    logprintf(" * " SCL_V " functions Loaded.");
    logprintf(" Path: %s",getServerDir().c_str());
    return true;
}

PLUGIN_EXPORT void PLUGIN_CALL Unload()
{
    logprintf(" * " SCL_V " functions Unloaded");
}

AMX_NATIVE_INFO PluginNatives[]=
        {
                {"downloadFile",downloadFile},
                {0,0}
        };

PLUGIN_EXPORT int PLUGIN_CALL AmxLoad(AMX * amx)
{
return amx_Register(amx, PluginNatives, -1);
}

PLUGIN_EXPORT int PLUGIN_CALL AmxUnload(AMX * amx)
{
return AMX_ERR_NONE;
}
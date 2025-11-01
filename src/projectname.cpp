#include "projectname.h"
#include <prism/qt/modular/wrapper.h>

Projectname::Projectname()
{

}

Projectname::~Projectname()
{

}

bool Projectname::register_types()
{
    return true;
}

bool Projectname::init()
{
    return true;
}

bool Projectname::install()
{
#if defined(_WIN32)
    prism::qt::modular::wrapper::startupUrl = "qrc:/projectname/views/MainWin.qml";
#elif defined(__linux__)
    prism::qt::modular::wrapper::startupUrl = "qrc:/projectname/views/MainLinux.qml";
#elif  defined(__APPLE__)
    prism::qt::modular::wrapper::startupUrl = "qrc:/projectname/views/MainLinux.qml";
#endif
    return true;
}

bool Projectname::uninstall()
{
    return true;
}

bool Projectname::uninit()
{
    return true;
}

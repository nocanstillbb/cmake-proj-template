#ifndef PROJECTNAME_H
#define PROJECTNAME_H

#include "../include/projectname/projectname_global.h"
#include <prism/qt/modular/interfaces/intf_module.h>
#include <QObject>



class PROJECTNAME_EXPORT Projectname : public prism::qt::modular::intfModule
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "prism::qt::modular::intfModule/1.0" FILE "projectname.json")
    Q_INTERFACES(prism::qt::modular::intfModule)
public:
    explicit Projectname();
    ~Projectname();
    // intfModule interface
public:
    bool register_types() override;
    bool init() override;
    bool install() override;
    bool uninstall() override;
    bool uninit() override;

signals:
};

#endif // PROJECTNAME_H

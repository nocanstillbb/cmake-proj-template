#ifndef PROJECTNAME_GLOBAL_H
#define PROJECTNAME_GLOBAL_H

#ifdef _WIN32
#define DECL_EXPORT __declspec(dllexport)
#define DECL_IMPORT __declspec(dllimport)
#else
#define DECL_EXPORT __attribute__((visibility("default")))
//#  define DECL_IMPORT  __attribute__((visibility("hidden")))
#define DECL_IMPORT __attribute__((visibility("default")))
#endif

#if defined(PROJECTNAME_LIBRARY)
#define PROJECTNAME_EXPORT DECL_EXPORT
#else
#define PROJECTNAME_EXPORT DECL_IMPORT
#endif

#endif // PROJECTNAME_GLOBAL_H


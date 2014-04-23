#ifndef FEEMODULE_GLOBAL_H
#define FEEMODULE_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(DATAPARSE_LIBRARY)
#  define FEEMODULESHARED_EXPORT Q_DECL_EXPORT
#else
#  define FEEMODULESHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // FEEMODULE_GLOBAL_H
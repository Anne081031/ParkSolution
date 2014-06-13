#include "mainwindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    // Pattern Match http://www.w3.org/TR/CSS2/selector.html#type-selectors
    // Selector SubSelector PseudoSelector { Declaration; }
    // * Selector 所有
    // QPushButton 该类及其子类实例
    // QPushButton[flat=”false”] 满足谓词的选择器
    // QPushButton#ObjectName 指定对象
    // E F 子孙F
    // E > F 直接孩子F
    // E + F 前有兄弟E的F元素
    // QRadioButton:!hover { color: red } 鼠标不在上面
    // QRadioButton:hover { color: red } 鼠标在上面
    // QPushButton:hover:!pressed { color: blue; } 鼠标悬浮并且没压下 AND
    // QCheckBox:hover, QCheckBox:checked { color: white } 悬浮或选择 OR
    // Cascading / merge self with parent, grandparent 自己设置
    // Inheritance 自己未设置
    // namespaces qApp->setStyleSheet("namespace--MyPushButton { background: yellow; }");
    // Setting QObject properties / qproperty-<property name> syntax
    // MyLabel { qproperty-pixmap: url(pixmap.png); }
    // MyGroupBox { qproperty-titleColor: rgb(100, 200, 100); }
    // QPushButton { qproperty-iconSize: 20px 20px; }
    // 属性是 Q_ENUMS 直接引用枚举常量名字

    QCommonFunction::SingleApplication( "[Guid(4FD614CC-5B12-44EB-9DEE-9BA796DCBDEF)]" );

    QApplication a(argc, argv);
    QCommonFunction::SetApplicationIcon( );

    QString strStyleSheet;
    QCommonFunction::GetUIStyleSheet( strStyleSheet );

    a.setStyleSheet( strStyleSheet );

    MainWindow w;
    //QCommonFunction::SetWindowIcon( &w );

    /*
    if ( !w.Login( ) ) {
        return 0;
    }
    */

    w.show();

    return a.exec();
}

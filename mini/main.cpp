#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQuickItem>
#include "Hello.h"

int main(int argc, char *argv[])
{
//    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    QQuickView view(QUrl(QStringLiteral("qrc:/hello.qml")));
    QObject *item = view.rootObject();

    Hello helloW;


    QObject::connect(item, SIGNAL(activated(double, double)), &helloW, SLOT(activated(double, double)) );

    view.show();
    return app.exec();
//    QQmlApplicationEngine engine;
////    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
//    engine.load(QUrl(QStringLiteral("qrc:/hello.qml")));


//    QObject::connect(item, SIGNAL(qmlSignal(QString)), &myClass, SLOT(cppSlot(QString)));

//    if (engine.rootObjects().isEmpty())
//    {
//        return -1;
//    }

//    return app.exec();
}

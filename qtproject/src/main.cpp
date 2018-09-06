#include <QApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QQmlContext>

#include "Hello.h"

int main(int argc, char **argv)
{
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);

    Hello hellObj;

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:///application.qml")));
    engine.rootContext()->setContextProperty("hellObj", &hellObj);

    return app.exec();
}

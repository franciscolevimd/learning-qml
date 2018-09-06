#include <QDebug>

#include "Hello.h"


Hello::Hello(QObject *parent)
{

}

void Hello::sayHello(QString msg)
{
    qDebug() << "Called the C++ slot with message:" << msg;
    emit helloResp(true, QStringLiteral("say Hello 2000"));
}

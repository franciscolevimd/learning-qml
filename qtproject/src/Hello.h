#ifndef _HELLO_H_
#define _HELLO_H_

#pragma once

#include <QObject>
#include <QList>
#include <QString>

class Hello : public QObject
{
    Q_OBJECT
public:
    explicit Hello(QObject *parent = nullptr);

    Q_INVOKABLE void sayHello(QString msg);

signals:
    void helloResp(bool success, QString message);

};
#endif // _HELLO_H_

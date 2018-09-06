#ifndef HELLO_H
#define HELLO_H

#include <QObject>


class Hello : public QObject
{
    Q_OBJECT
public:
    explicit Hello(QObject *parent = nullptr);

signals:

public slots:
    void onActivated(double xPosition, double yPosition);
};

#endif // HELLO_H

#include "Hello.h"


Hello::Hello(QObject *parent) : QObject(parent)
{

}

void Hello::onActivated(double xPosition, double yPosition)
{
    qDebug("Called the C++ slot with message: [%f, %f]", xPosition, yPosition );
}

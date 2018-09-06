#include <QApplication>
#include <QQmlApplicationEngine>


int main(int argc, char **argv)
{
	QApplication app(argc, argv);
  	QQmlApplicationEngine engine("hello-mami.qml");
  	return app.exec();
}

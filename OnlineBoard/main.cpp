#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "login.h"
#include "QQmlContext"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
                     &app, []() { QCoreApplication::exit(-1); }, Qt::QueuedConnection);
    engine.loadFromModule("OnlineBoard", "Main");
    Login login;
    engine.rootContext()->setContextProperty("$Login",&login);

    return app.exec();
}

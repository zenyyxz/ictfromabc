#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QUrl>
#include <QQmlContext>
#include <QHostInfo>
#include "authmanager.hxx"

int main(int argc, char* argv[]) {
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    // Force all Qt DNS lookups to strictly use IPv4 addresses
    // QHostInfo::lookupHost("localhost", [](const QHostInfo&){});

    AuthManager authManager;

    engine.rootContext()->setContextProperty("authManager", &authManager);

    const QUrl url(QStringLiteral("qrc:/ictfromabc_uri/ui/ictfromabcUI.qml"));
    engine.load(url);

    return app.exec();
}
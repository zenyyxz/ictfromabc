#pragma once

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>

class AuthManager : public QObject {
    Q_OBJECT
    public: 
    explicit AuthManager(QObject *parent = nullptr);

    Q_INVOKABLE void login(const QString& phone, const QString& passcode);

    signals:
    void loginSuccess();
    void loginFailed(const QString& errorMessage);

    private slots:
    void onLoginReply(QNetworkReply *reply);

    private:
    QNetworkAccessManager *m_networkManager;
};
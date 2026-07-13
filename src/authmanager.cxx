#include "authmanager.hxx"
#include <QNetworkRequest>
#include <QJsonDocument>
#include <QJsonObject>
#include <QSettings>

AuthManager::AuthManager(QObject* parent=nullptr) : QObject(parent) {
    m_networkManager = new QNetworkAccessManager(this);
}

void AuthManager::login(const QString& phone, const QString& passcode) {
    QUrl url("https://ictfromabc.com/api/login");
    QNetworkRequest request(url);
    request.setHeader(QNetworkRequest::ContentTypeHeader, "application/json");

    QJsonObject j;
    j["phoneNumber"] = phone;
    j["password"] = passcode;
    j["visitorId"] = "0L2Fcd0oYqW5YwRmUa4Z";
    j["confidenceScore"] = "1";
    QJsonDocument doc(j);

    QNetworkReply *reply = m_networkManager->post(request, doc.toJson());
    connect(reply, &QNetworkReply::finished, this, [this, reply]() { this->onLoginReply(reply); });
}

void AuthManager::onLoginReply(QNetworkReply *reply) {
    reply->deleteLater();

    if (reply->error() == QNetworkReply::NoError) {
        QByteArray responseData = reply->readAll();
        QJsonDocument doc = QJsonDocument::fromJson(responseData);
        QJsonObject j = doc.object();

        QString token = j["token"].toString();

        QSettings settings("ictfromabcApp", "Preferences");
        settings.setValue("auth_token", token);

        emit loginSuccess();
    } else {
        emit loginFailed(reply->errorString());
    }
}
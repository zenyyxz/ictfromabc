#include "authmanager.hxx"
#include <QNetworkRequest>
#include <QJsonDocument>
#include <QJsonObject>
#include <QSettings>

AuthManager::AuthManager(QObject* parent) : QObject(parent) {
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
    j["confidenceScore"] = 1;
    QJsonDocument doc(j);

    QNetworkReply *reply = m_networkManager->post(request, doc.toJson(QJsonDocument::Compact));
    connect(reply, &QNetworkReply::finished, this, [this, reply]() { this->onLoginReply(reply); });
}

bool AuthManager::hasSavedToken() const {
    QSettings settings("ICTFromABC_Client", "Auth");
    return !settings.value("saved_token").toString().isEmpty();
}

void AuthManager::onLoginReply(QNetworkReply *reply)
{
    reply->deleteLater();

    if (reply->error() == QNetworkReply::NoError) {
        QByteArray responseData = reply->readAll();
        QJsonDocument doc = QJsonDocument::fromJson(responseData);
        QJsonObject json = doc.object();

        if (json["msg"].toString() == "Login Successful") {
            QString token = json["token"].toString();
            QString courseId = json["course_id"].toString();

            QSettings settings("ICTFromABC_Client", "Auth");
            settings.setValue("saved_token", token);
            settings.setValue("course_id", courseId);

            emit loginSuccess();
        } else {
            emit loginFailed("Invalid server response status.");
        }
    } else {
        emit loginFailed(reply->errorString());
    }
}
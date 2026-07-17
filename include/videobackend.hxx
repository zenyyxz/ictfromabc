#pragma once

#include <QObject>
#include <QUrl>
#include <QString>
#include <QtQml/qqmlregistration.h>
#include "localproxyserver.hxx"

class VideoBackend : public QObject {
    Q_OBJECT
    QML_ELEMENT

    Q_PROPERTY(QUrl videoUrl READ videoUrl WRITE setVideoUrl NOTIFY videoUrlChanged)
    Q_PROPERTY(QString videoTitle READ videoTitle NOTIFY videoTitleChanged)

    public:
    explicit VideoBackend(QObject* parent = nullptr);
    ~VideoBackend();

    QUrl videoUrl() const;
    void setVideoUrl(const QUrl& url);

    QString videoTitle() const;

    Q_INVOKABLE QString formatTime(quint64 ms) const;

    signals:
    void videoUrlChanged();
    void videoTitleChanged();

    private:
    QUrl m_videoUrl;
    QUrl m_rawUrl;
    QString m_videoTitle;
    LocalProxyServer* m_proxyServer;

    void updateTitle();
};
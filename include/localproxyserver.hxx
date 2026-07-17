#pragma once

#include <QTcpServer>
#include <QTcpSocket>
#include <QSslSocket>
#include <QString>
#include <QHostAddress>
#include <QHostInfo>
#include <QSslError>

class ProxyConnection : public QObject {
    Q_OBJECT
    public:
    ProxyConnection(qintptr socketDescriptor, const QString& defaultHost, QObject* parent = nullptr);
    ~ProxyConnection();

    signals:
    void hostUsed(const QString& host);
    void finished();

    private slots:
    void onClientReadyRead();
    void onRemoteConnected();
    void onRemoteReadyRead();
    void onDisconnected();
    void onSslErrors(const QList<QSslError>& errors);

    private:
    QTcpSocket* m_clientSocket;
    QSslSocket* m_remoteSocket;
    QString m_defaultHost;
    QByteArray m_clientBuffer;
    QByteArray m_remoteBuffer;
    bool m_headersForwarded;
    bool m_isM3u8;

    void parseAndForward();
};

class LocalProxyServer : public QTcpServer {
    Q_OBJECT
    public:
    explicit LocalProxyServer(QObject* parent = nullptr);
    quint16 port() const;

    protected:
    void incomingConnecton(qintptr socketDescriptor) override;

    private:
    quint16 m_port;
    QString m_lastHost;
};
#include "localproxyserver.hxx"
#include <QDebug>
#include <QHostInfo>
#include <QRegularExpression>

LocalProxyServer::LocalProxyServer(QObject* parent) : QTcpServer(parent), m_lastHost("vz-0d705596-3d4.b-cdn.net") {
    if (!listen(QHostAddress::LocalHost, 8080)) {
        if (listen(QHostAddress::LocalHost, 0)) {
            m_port = serverPort();
        } else {
            qWarning() << "Proxy server: Failed to listen: " << errorString();
            m_port = 0;
        }
    } else {
        m_port = 8080;
    }
    qDebug() << "Proxy server: Listening on 127.0.0.1:" << m_port;
}

quint16 LocalProxyServer::port() const {
    return m_port;
}

void LocalProxyServer::incomingConnection(qintptr socketDescriptor) {
    ProxyConnection* conn = new ProxyConnection(socketDescriptor, m_lastHost, this);
    connect(conn, &ProxyConnection::hostUsed, this, [this](const QString& host) {
        m_lastHost = host;
    });
    connect(conn, &ProxyConnection::finished, conn, &ProxyConnection::deleteLater);
}

ProxyConnection::ProxyConnection(qintptr socketDescriptor, const QString& defaultHost, QObject* parent) : QObject(parent), m_remoteSocket(nullptr), m_defaultHost(defaultHost), m_headersForwarded(false), m_isM3u8(false) {
    m_clientSocket = new QTcpSocket(this);
    m_clientSocket->setSocketDescriptor(socketDescriptor);

    connect(m_clientSocket, &QTcpSocket::readyRead, this, &ProxyConnection::onClientReadyRead);
    connect(m_clientSocket, &QTcpSocket::disconnected, this, &ProxyConnection::onDisconnected);
}
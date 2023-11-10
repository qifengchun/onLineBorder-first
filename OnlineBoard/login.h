#ifndef LOGIN_H
#define LOGIN_H

#include <QObject>

class Login : public QObject
{
    Q_OBJECT
public:
    explicit Login(QObject *parent = nullptr);
public slots:
    int signIn(QString pcUser,QString pcPasswd);

signals:
    int signInfo(int lRet,QString);
};

#endif // LOGIN_H

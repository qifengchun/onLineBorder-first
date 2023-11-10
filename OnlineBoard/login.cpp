#include "login.h"
#include "qdebug.h"
Login::Login(QObject *parent)
    : QObject{parent}
{

}

int Login::signIn(QString pcUser, QString pcPasswd)
{
    int lRet = -99;
    QString pcMsg;
    if(pcUser != "admin"){
        pcMsg = tr("Username Error!");
        lRet = -1;
    }else if(pcPasswd !="admin"){
        pcMsg = tr("Password does'nt match!");
        lRet = -2;
    }else{
        pcMsg = tr("Login Success!");
        lRet = 0;
    }
    qDebug()<<pcMsg;
    return lRet;
}

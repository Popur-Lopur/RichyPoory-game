#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtSql>
#include <QDebug>
#include <QSqlDatabase>
#include <QSqlError>
#include <QSqlQuery>
#include <QQmlContext>
#include <QApplication>
#include <QQmlContext>
#include <QtQml>
#include <iostream>
#include <QObject>
#include <QVector>
#include <QRandomGenerator>
#include <QDebug>
#include <cmath>
#include <QFile>
#include <QTextStream>
#include <QtMath>
#include <QTime>
#include <QString>
#include <QLoggingCategory>
#include <QDateTime>
#include <QThread>

#include "questgame.h"


int main(int argc, char *argv[])
{

    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<QuestGame>("QuestGame", 1, 0, "QuestGame");

    QuestGame questgame;
    engine.rootContext()->setContextProperty("questgame", &questgame);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


    return app.exec();
}

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
#include "numbergenerator.h"



int main(int argc, char *argv[])
{

    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<QuestGame>("QuestGame", 1, 0, "QuestGame");
    qmlRegisterType<NumberGenerator>("NumberGenerator", 1, 0, "NumberGenerator");

    NumberGenerator numbergenerator;
    QuestGame questgame;

    engine.rootContext()->setContextProperty("questgame", &questgame);
    engine.rootContext()->setContextProperty("numbergenerator", &numbergenerator);


    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


    return app.exec();
}

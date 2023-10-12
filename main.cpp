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
//    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

//    QGuiApplication app(argc, argv);

//    qmlRegisterType<LoadQuestions>("com.myapp.loadquestions", 1, 0, "LoadQuestions");

//    LoadQuestions loadQuestions;

//    QQmlApplicationEngine engine;

//    engine.rootContext()->setContextProperty(QStringLiteral("loadQuestions"), &loadQuestions);

//    const QUrl url(QStringLiteral("qrc:/main.qml"));
//    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
//                     &app, [url](QObject *obj, const QUrl &objUrl) {
//        if (!obj && url == objUrl)
//            QCoreApplication::exit(-1);
//    }, Qt::QueuedConnection);
//    engine.load(url);

    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<QuestGame>("QuestGame", 1, 0, "QuestGame");

    QuestGame questgame;
    engine.rootContext()->setContextProperty("logview", &questgame);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


    return app.exec();
}

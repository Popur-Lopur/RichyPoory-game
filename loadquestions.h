#ifndef LOADQUESTIONS_H
#define LOADQUESTIONS_H
#include <QtSql>
#include <QDebug>
#include <QSqlDatabase>
#include <QSqlError>
#include <QSqlQuery>
#include <QString>
#include <QVector>
#include <algorithm>
#include <random>



class LoadQuestions : public QObject
{
     Q_OBJECT


    int questionId;
    QString question;
    QVector<QString> answers;
    int answerTarget;

public:
    LoadQuestions();
    LoadQuestions(int questId, const QString& quest, const QVector<QString>& ans, int ansTrg);



    int getquestionId() const { return questionId;}
    QString getQuestion() const { return question; }
    QVector<QString> getAnswers() const { return answers; }
    int getAnswerTarget() const { return answerTarget;}

    void SelectMod(const QString& mod);
    Q_INVOKABLE void EasyMod();
    Q_INVOKABLE void NormalMod();
    Q_INVOKABLE void HardMod();
};

#endif // LOADQUESTIONS_H

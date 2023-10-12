#ifndef QUESTGAME_H
#define QUESTGAME_H


#include <QtSql>
#include <QDebug>
#include <QSqlDatabase>
#include <QSqlError>
#include <QSqlQuery>
#include <QString>
#include <QVector>
#include <algorithm>
#include <random>

class QuestGame : public QObject
{
    Q_OBJECT

    int questionId;
    QString question;
    QVector<QString> answers;
    int answerTarget;

public:
    explicit QuestGame(QObject *parent = nullptr);
    QuestGame(int questId, const QString& quest, const QVector<QString>& ans, int ansTrg);

    QVector<QuestGame*> allQuestions;
    int getquestionId() const { return questionId;}
    QString getQuestion() const { return question; }
    QVector<QString> getAnswers() const { return answers; }
    int getAnswerTarget() const { return answerTarget;}

    Q_INVOKABLE QVector<QuestGame*>  SelectMod(const QString& mod);
//    Q_INVOKABLE void EasyMod();
//    Q_INVOKABLE void NormalMod();
//    Q_INVOKABLE void HardMod();
    Q_INVOKABLE void TogetherMod();
};

#endif // QUESTGAME_H

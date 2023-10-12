#ifndef QUESTIONSGAME_H
#define QUESTIONSGAME_H
#include <QtSql>
#include <QDebug>
#include <QSqlDatabase>
#include <QSqlError>
#include <QSqlQuery>
#include <QString>
#include <QVector>
#include <algorithm>
#include <random>

class QuestionsGame : public QObject
{
    Q_OBJECT

    int questionId;
    QString question;
    QVector<QString> answers;
    int answerTarget;

public:
    explicit QuestionsGame(QObject *parent = nullptr);
    QuestionsGame(int questId, const QString& quest, const QVector<QString>& ans, int ansTrg);



    int getquestionId() const { return questionId;}
    QString getQuestion() const { return question; }
    QVector<QString> getAnswers() const { return answers; }
    int getAnswerTarget() const { return answerTarget;}

    void SelectMod(const QString& mod);
    Q_INVOKABLE void EasyMod();
    Q_INVOKABLE void NormalMod();
    Q_INVOKABLE void HardMod();
};

#endif // QUESTIONSGAME_H

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
    int currentQuestionIndex = 0;
    int currentTargetIndex = 0;
    int rectangleIndex = 0;
    int numberFirst = 0;
    int numberSecond = 0;






public:
    explicit QuestGame(QObject *parent = nullptr);
    QuestGame(int questId, const QString& quest, const QVector<QString>& ans, int ansTrg);

    QVector<QuestGame*> allQuestions;
    int getquestionId() const { return questionId;}
    QString getQuestion() const { return question; }
    QVector<QString> getAnswers() const { return answers; }
    int getAnswerTarget() const { return answerTarget;}
    int getrectangleIndex() const { return rectangleIndex; }
    int getNumber1Half() const { return  numberFirst; }
    int getNumber2Half() const { return  numberSecond; }



    Q_INVOKABLE QVector<QuestGame*>  selectMod(const QString& mod);
    Q_INVOKABLE void togetherMod();
    Q_INVOKABLE void nextQuestion();
    Q_INVOKABLE void checkTarget();
    Q_INVOKABLE void numberRect();
    Q_INVOKABLE void newGameIndex();
    Q_INVOKABLE void newGameNumberRect();
    Q_INVOKABLE void newGameCheckTarget();
    Q_INVOKABLE void viewTarget();


signals:

    void questionChanged(const QString& question);
    void answer1Changed(const QString& answer1);
    void answer2Changed(const QString& answer2);
    void answer3Changed(const QString& answer3);
    void answer4Changed(const QString& answer4);
    void targetChanged (const int& target);
    void rectangleIndexChanged(const int& index);
    void number1Changed( int number1);
    void number2Changed( int number2);



};

#endif // QUESTGAME_H

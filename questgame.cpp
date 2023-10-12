#include "questgame.h"

QuestGame::QuestGame(QObject *parent) : QObject(parent)

{

}

QuestGame::QuestGame(int questId, const QString& quest, const QVector<QString>& ans, int ansTrg):
    questionId(questId),question(quest), answers(ans), answerTarget(ansTrg)
{

}

QVector<QuestGame*>  QuestGame::SelectMod(const QString &mod)
{
    setlocale(LC_ALL, "rus");
    // вектор объектов вопросов и их составляющих
    QVector<QuestGame*> questions;


    // Открытие базы данных и установка драйвера
    QSqlDatabase db = QSqlDatabase::addDatabase("QPSQL");
    db.setHostName("localhost");
    db.setDatabaseName("QuestionsForGame");
    db.setUserName("postgres");
    db.setPassword("postgres");

    if (!db.open()) {
        qDebug() << "Error: connection with database fail";
    } else {
        qDebug() << "Database: connection ok";
    }

    QSqlQuery query;
    query.exec("SELECT * FROM " + mod);
    while (query.next()) {
        int questId = query.value(0).toInt();
        QString quest = query.value(1).toString();
        QVector<QString> ans { query.value(2).toString(), query.value(3).toString(),
                    query.value(4).toString(), query.value(5).toString() };
        int ansTrg = query.value(6).toInt();
        questions.push_back(new QuestGame(questId,quest,ans,ansTrg));
    }

    // перемешивание позиций внутри вектора для рандомности подачи данных при каждом запуске !Проверено!
    std::default_random_engine rng(std::chrono::system_clock::now().time_since_epoch().count());
    std::shuffle(std::begin(questions), std::end(questions), rng);


    // Создаем новый вектор с первыми пятью элементами
    QVector<QuestGame*> randomQuestions;
    if(questions.size() >= 5)
    {
        for(int i = 0; i < 5; i++)
        {
            randomQuestions.push_back(questions[i]);
        }
    }
    db.close();
    return randomQuestions;

}


// Объединение всех модов в одну структуру вопросов
void QuestGame::TogetherMod()
{
    allQuestions.clear();  // очищаем вектор перед заполнением

    QVector<QuestGame*> easyQuestions = SelectMod("easy");
    QVector<QuestGame*> normalQuestions = SelectMod("normal");
    QVector<QuestGame*> hardQuestions = SelectMod("hard");

    allQuestions.reserve( easyQuestions.size() + normalQuestions.size() + hardQuestions.size() );

    allQuestions.append(easyQuestions);
    allQuestions.append(normalQuestions);
    allQuestions.append(hardQuestions);
}

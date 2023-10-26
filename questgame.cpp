#include "questgame.h"

QuestGame::QuestGame(QObject *parent) : QObject(parent)

{

}

QuestGame::QuestGame(int questId, const QString& quest, const QVector<QString>& ans, int ansTrg):
    questionId(questId),question(quest), answers(ans), answerTarget(ansTrg)
{

}

QVector<QuestGame*>  QuestGame::selectMod(const QString &mod)
{
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
void QuestGame::togetherMod()
{
    allQuestions.clear();  // очищаем вектор перед заполнением

    QVector<QuestGame*> easyQuestions = selectMod("easy");
    QVector<QuestGame*> normalQuestions = selectMod("normal");
    QVector<QuestGame*> hardQuestions = selectMod("hard");

    allQuestions.reserve( easyQuestions.size() + normalQuestions.size() + hardQuestions.size() );

    allQuestions.append(easyQuestions);
    allQuestions.append(normalQuestions);
    allQuestions.append(hardQuestions);


}

void QuestGame::nextQuestion()
{
    if (currentQuestionIndex < allQuestions.size())
       {
           QuestGame* currentQuest = allQuestions[currentQuestionIndex];

           qDebug() << currentQuest->question;
           qDebug() << currentQuest->answers[0];

           emit questionChanged(currentQuest->question);
           emit answer1Changed(currentQuest->answers[0]);
           emit answer2Changed(currentQuest->answers[1]);
           emit answer3Changed(currentQuest->answers[2]);
           emit answer4Changed(currentQuest->answers[3]);

           currentQuestionIndex++;

    }
}

void QuestGame::checkTarget()
{
    QuestGame* currentTarget = allQuestions[currentTargetIndex];
    emit targetChanged(currentTarget->answerTarget);
    currentTargetIndex++;
}

void QuestGame::numberRect()
{
    rectangleIndex++;
    emit rectangleIndexChanged(rectangleIndex);
}
// сброс индекса для возобновления сессии чтобы он не увеличивался бесконечно
void QuestGame::newGameIndex()
{
    currentQuestionIndex = 0;
    if (currentQuestionIndex < allQuestions.size())
       {
           QuestGame* currentQuest = allQuestions[currentQuestionIndex];

           qDebug() << currentQuest->question;
           qDebug() << currentQuest->answers[0];

           emit questionChanged(currentQuest->question);
           emit answer1Changed(currentQuest->answers[0]);
           emit answer2Changed(currentQuest->answers[1]);
           emit answer3Changed(currentQuest->answers[2]);
           emit answer4Changed(currentQuest->answers[3]);

           currentQuestionIndex++;

    }
}
// сброс индекса для возобновления сессии чтобы он не увеличивался бесконечно
void QuestGame::newGameNumberRect()
{
    rectangleIndex = 0;
    rectangleIndex++;
    emit rectangleIndexChanged(rectangleIndex);
}
// сброс индекса для возобновления сессии чтобы он не увеличивался бесконечно
void QuestGame::newGameCheckTarget()
{
    QuestGame* currentTarget = allQuestions[currentTargetIndex];
    emit targetChanged(currentTarget->answerTarget);
    currentTargetIndex = 0;
}

// 50/50 подсказка реализация
void QuestGame::viewTarget()
{
    QuestGame* currentTarget = allQuestions[currentTargetIndex];
    emit targetChanged(currentTarget->answerTarget);
    qDebug() << currentTarget->answerTarget;
    QVector<int> numbers = {1,2,3,4} ;

    //Удаляет цифру правильного таргета и создает рандомный вектор из остатка
    numbers.erase(std::remove(numbers.begin(), numbers.end(), currentTarget->answerTarget), numbers.end());
    std::default_random_engine rng(std::chrono::system_clock::now().time_since_epoch().count());
    std::shuffle(std::begin(numbers), std::end(numbers), rng);
    numberFirst = numbers[0];
    numberSecond = numbers[1];

    emit number1Changed(numberFirst);
    emit number2Changed(numberSecond);
    qDebug() << numbers;

}



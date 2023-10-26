#include "numbergenerator.h"

#include <chrono>
#include <random>
#include <QString>
#include <QDebug>

NumberGenerator::NumberGenerator(QObject *parent) : QObject(parent)
  , rng(std::chrono::system_clock::now().time_since_epoch().count())
  , distribution(0, 9)
{

}

QString NumberGenerator::genNumber()
{
        phoneNumber.clear();
        phoneNumber.append("89");

        for (int i = 0; i < 9; i++) {
            int digit = distribution(rng);
            phoneNumber.append(QString::number(digit));
        }
        emit phoneNumberChanged(phoneNumber);
        qDebug() << phoneNumber;
        return phoneNumber;
}

QVector<QString> NumberGenerator::genName()
{
    names = {"Гений", "Пушистик","Толик Алкоголик","Саня"};

    std::default_random_engine rng(std::chrono::system_clock::now().time_since_epoch().count());
    std::shuffle(std::begin(names), std::end(names), rng);



    emit nameNumber1Changed();
    emit nameNumber2Changed();
    emit nameNumber3Changed();
    emit nameNumber4Changed();
    qDebug() << names;
    return names;



}

#ifndef NUMBERGENERATOR_H
#define NUMBERGENERATOR_H

#include <QObject>
#include <chrono>
#include <random>
#include <QString>
#include <QVector>

class NumberGenerator : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString nameNumber1 READ getNameNumber1 NOTIFY nameNumber1Changed)
    Q_PROPERTY(QString nameNumber2 READ getNameNumber2 NOTIFY nameNumber2Changed)
    Q_PROPERTY(QString nameNumber3 READ getNameNumber3 NOTIFY nameNumber3Changed)
    Q_PROPERTY(QString nameNumber4 READ getNameNumber4 NOTIFY nameNumber4Changed)



public:
    explicit NumberGenerator(QObject *parent = nullptr);

    Q_INVOKABLE QString genNumber();
    Q_INVOKABLE QVector<QString> genName();

    QString getNameNumber1() const { return names[0]; } // ensure names[0] exists
    QString getNameNumber2() const { return names[1]; } // ensure names[1] exists
    QString getNameNumber3() const { return names[2]; } // ensure names[2] exists
    QString getNameNumber4() const { return names[3]; } // ensure names[3] exists

signals:

    void phoneNumberChanged( QString phoneNumber);
    void nameNumber1Changed();
    void nameNumber2Changed();
    void nameNumber3Changed();
    void nameNumber4Changed();

private:
    std::default_random_engine rng;
    std::uniform_int_distribution<int> distribution;
    QString phoneNumber;
    QVector<QString> names;

};

#endif // NUMBERGENERATOR_H

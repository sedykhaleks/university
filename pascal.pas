// Программа которая запрашивает радиус сферы и на основании этого будет вычислять площадь и объем.

S = 4PiR^2
V = 4PiR^3/3

Program Three;

var
    R: integer;
    S, V: real;
const
    Pi = 3.141592;

begin
    write ('Введите радиус сферы: ');
    readln (R);
    S:=4*Pi*sqr(R);
    V:=4*Pi*(sqr(R)*R/3);

    writeln ('Площадь сферы = ', S:1:3);
    write ('Объем сферы = ', V:1:3);
end.

// Пользователь вводит данные уравнения, программа выводит корни.

Program Four;

var
    x, a, b, c, D, x1, x2 : real;
    
begin
    writeln ('ax^2 + bx + c = 0, a <> 0');
    writeln ('Введите a, b, c: ');
    write ('a = ');
    readln (a);
    write ('b = ');
    readln (b);
    write ('c = ');
    readln (c);
    
    D := sqr(b)-4*a*c;

    if D<0 then begin
    writeln ('No roots!!!');
    end;
    
    if D=0 then begin
    writeln ('x = ',-b/(2*a));
    end;
    
    if D>0 then begin
    x1 := -b-sqrt(D)/(2*a);
    x2 := -b+sqrt(D)/(2*a);
    writeln ('x1 = ',(x1));
    writeln ('x2 = ',(x2));
    end;
end.

// Программа определяет четное или нечетное введеное число и выдает ответ

Program Odd;
var
    x : integer;
begin
    read (x);
    writeln (x);
    if x mod 2 = 0 then
    writeln ('Четное')
    else
    writeln ('Нечетное')
end.

// Программа выводит название месяца, кол-во дней и время года

Program Monthy;
var
    month : byte;
begin
    write ('Введите номер месяца: ');
    readln (month);
    if (month < 1) or (month > 12) then
    writeln ('Не является месяцем!')
    else
    write ('Название месяца: ');
    if (month = 1) then
    writeln ('Январь')
    else
    if (month = 2) then
    writeln ('Февраль')
    else
    if (month = 3) then
    writeln ('Март')
    else
    if (month = 4) then
    writeln ('Апрель')
    else
    if (month = 5) then
    writeln ('Май')
    else
    if (month = 6) then
    writeln ('Июнь')
    else
    if (month = 7) then
    writeln ('Июль')
    else
    if (month = 8) then
    writeln ('Август')
    else
    if (month = 9) then
    writeln ('Сентябрь')
    else
    if (month = 10) then
    writeln ('Ноябрь')
    else
    writeln ('Декабрь');
    
    writeln ('Количество дней в месяце: ');
    if (month = 1) or (month = 3) or (month = 5) or (month = 7) or (month = 8) or (month = 10) or (month = 12) then
    writeln ('31 день')
    else
    if (month = 4) or (month = 6) or (month = 9) or (month = 11) then
    writeln ('30 дней')
    else
    writeln ('28 или 29 дней');
    
    write ('Время года: ');
    if (month >= 3) and (month <= 5) then
    writeln ('Весна')
    else
    if (month >= 6) and (month <= 8) then
    writeln ('Лето')
    else
    if (month >= 9) and (month <= 11) then
    writeln ('Осень')
    else
    writeln ('Зима');
    
    if not (month = 1) then writeln ('Это не первый месяц в году!')
    end.

// Второй вариант написания программы

Program Monthy;

var
    month : byte;
begin
    write ('Введите номер месяца: ');
    readln (month);
    
    if (month < 1) or (month > 12) then
    writeln ('Не является месяцем!')
    else
    write ('Название месяца: ');
    
    case month of
    
    1 : writeln ('Январь');
    2 : writeln ('Февраль');
    3 : writeln ('Март');
    4 : writeln ('Апрель');
    5 : writeln ('Май');
    6 : writeln ('Июнь');
    7 : writeln ('Июль');
    8 : writeln ('Август');
    9 : writeln ('Сентябрь');
    10 : writeln ('Октябрь');
    11 : writeln ('Ноябрь');
    12 : writeln ('Декабрь');
    end;
   
    writeln ('Количество дней в месяце: ');
    
    case month of
    1, 3, 5, 7, 8, 10, 12 : writeln ('31');
    4, 6, 9, 11 : writeln ('30')
    else
    writeln ('28 или 29');
    end;
    
    write ('Время года: ');
    
    case month of 
    3..5 : writeln ('Весна');
    6..8 : writeln ('Лето');
    9..11 : writeln ('Осень')
    else
    writeln ('Зима');
    end;
    
    if not (month = 1) then writeln ('Это не первый месяц в году!')
    
    end.

// Саша, учась в 9-ом классе, решил придерживаться распорядка дня. 
// Напишите программу, которая в зависимости от указанного времени, определяет деятельность Саши.

Program Hour_time;

var a : byte;
begin
    write ('Введите время: '); 
    read(a);
    case a of
    22..24, 0..6 : write ('Сон');
    7..8 : write ('Пробуждение');
    9..15 : write ('Учеба');
    16..18 : write ('Выполнение домашнего задания');
    19..20 : write ('Вечерняя прогулка');
    21 : write ('Подготовка ко сну');
    else write ('Введено число вне диапазона 0..24!');
    end;
end.

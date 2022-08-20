program Lab1;

var n: longint; {искомое кол-во простых чисел}
    k: longint; {счетчик простых чисел}
    i: longint; {счетчик делителей}
    m: longint; {число из последовательности}
    a: longint; {произведение простых чисел}
    s: boolean;
begin
{запрос на ввод данных пользователя}
  repeat
    write(‘Введите количество простых чисел: ’);
    readln(n);
  until(n>0); 
  {присваиваем переменной "а" значение 1. В противном случае, результатом умножения будет 0}
  a:=1;
  m:=1;
  {цикл для подсчета найденых простых чисел}
  while k < n do
    begin
    {присваиваем переменной "s" значение true, для дальнейшей правильной работы программы}
    s:=true;
    m:=m+1;
    {цикл перебора делителей для числа из последовательности}
    for i:=2 to m-1 do
    {условие для определения, простое число или нет, по oстатку от деления}
      if (m mod i) = 0 then
      begin
      {действия, выполняемые при нахождении делителя для данного числа}
        s:=false;
        writeln(m, ' - не простое')
        break;
     end;
     {условный оператор, выполняющийся если в диапазоне от 2 до m-1 не было найдено делителей, т.е. число оказалось простым}
     if s=true then
     begin
     {вывод строки, для удобства контроля работы программы}
     writeln(m, ' - простое');
     {увеличение значения счетчика найденных простых чисел на единиц}
     inc(k);
     {умножение текущего произведения найденных простых на только что найденное простое число}
     a:=a*m;
    end;
  end;
{вывод произведения найденных простых чисел после завершения работы цикла}
writeln('Произведение простых чисел = ', a);
end.

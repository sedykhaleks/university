uses crt;

var
    dist, d : real;
	x , y : array[1..100] of real;
	i , j, n : integer;
	n1, n2 : integer;

begin
	clrscr;
	write('Количество точек n: ');
	readln(n);
	for i := 1 to n do
	 begin
		write('Введите x[' , i , '] = ');
		readln(x[i]);
		write('Введите y[' , i , '] = ');
		readln(y[i]);
	 end;
	d := 0;
	n1 := 0; n2 := 0;
	for i := 1 to n - 1 do
	  for j := i + 1 to n do
	   begin
		dist := sqrt((x[i] - x[j]) * (x[i] - x[j]) + (y[i] - y[j]) * (y[i] - y[j]));
		if dist > d then
		  begin
		    d := dist;
			n1 := i;
			n2 := j;
		  end;
	   end;
	writeln('Наибольшее расстояние между точками ', n1, ' и ', n2);
        readln;
end.

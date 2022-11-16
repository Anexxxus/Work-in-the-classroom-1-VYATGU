var
  a: array[1..100] of integer;
  n, i: integer;

begin
  write('Размер массива от 1 до 100, введите n = ');
  readln(n);   
  if (n < 1) and (n > 100) then exit;
  write('Массив А: ');
  for i := 1 to n do
  begin
    a[i] := random(100);
    write(a[i], ', ');
  end;
  writeln;
  write('Массив Б: ');
  for i := 1 to n do
  begin
    if a[i] mod 2 = 0 then a[i] := sqr(a[i]);
    write(a[i], ', ');
  end;
end.
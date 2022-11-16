var
  a: array[1..100] of integer;
  min, max, n, i, g: integer;

begin
  write('Размер массива от 1 до 100, введите n = ');
  readln(n);   
  if (n < 1) and (n > 100) then exit;
  write('Массив А:');
  for i := 1 to n do
  begin
    a[i] := random(100);
    write(a[i], ', ');
  end;
  writeln;
  min := 100;
  max := 1;
  for i := 1 to n do
  begin
    if a[i] < min then min := a[i];
    if a[i] > max then max := a[i];
  end;
  g := min * max;
  writeln('Минимум = ', min);
  writeln('Максимум = ', max);
  writeln('Их произведение = ', g)
end.
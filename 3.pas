var
  a: array[1..100] of integer;
  n, i, j, g: integer;

begin
  write('Размер массива от 1 до 100, введите n = ');
  readln(n);
  i := 1;
  if (n < 1) and (n > 100) then exit;
  write('Массив А: ');
  for i := 1 to n do
  begin
    a[i] := random(99) + 1;
    write(a[i], ', ');
  end;
  writeln;
  g := 0;
  for i := 1 to n do g := g + a[i];
  g := g div n;
  write('Массив Б: ');
  while i <= n do
  begin
    if a[i] > g then
    begin
      j := i;
      while j <= (n - 1) do
      begin
        a[j] := a[j + 1];
        j := j + 1;
      end;
      n := n - 1;
    end
    else
      i := i + 1;
  end;
  for i := 1 to n do
  begin
    write(a[i], ', ');
  end;
  writeln();
  writeln('Среднее значение: ', g);
end.
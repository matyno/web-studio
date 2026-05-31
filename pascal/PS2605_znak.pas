Program PS2605;
uses crt;
var
  znak: char;
begin
  clrscr;
  writeln('Urcit zadany znak');
  write('znak = '); readln(znak);
  case znak of
    'a'..'z': writeln('Male pismeno');
    'A'..'Z': writeln('Velke pismeno');
    '0'..'9': writeln('Cislica');
  else
    writeln('Iny znak');
  end;
  repeat until keypressed;
end.

Program P2A15;
uses crt;
var
  i: char;
  pok: char;
begin
  clrscr;
  writeln('Zadaj pismeno vybraneho slova');
  writeln;
  repeat
    writeln('Zadaj pismeno');readln(i);
    writeln;
    case i of
      'b': writeln('by, byt, bystry, Bystrica, byt, byvat, byvol, bydlo');
      'm': writeln('my, Myjava, mykat, mylit, mys, mysiet, mys, myto');
      'p': writeln('pycha, pykat, pytat, pyr, pysk, pytliak, kopyto');
      'r': writeln('ryba, ryciat, ryha, rydzi, rychly, ryt, rym, rypat, rys');
      's': writeln('sycat, sychravy, sykorka, syn, sypat, syr, syset, syty, vysychat');
      'v': writeln('vy, vydra, vyha, vyr, vyskat, vysoky, vyt, vyzla, zvysit, zvyk');
      'z': writeln('jazyk, nazyvat');
    else writeln('Zle pismeno');
    end;
    writeln('Chces opakovat? (a/n)');
    readln(pok);
  until pok = 'n';
end.

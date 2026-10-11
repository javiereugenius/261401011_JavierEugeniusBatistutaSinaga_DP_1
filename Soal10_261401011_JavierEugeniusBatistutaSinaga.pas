program Soal10;
// Nama : Javier Eugenius Batistuta Sinaga 
// NIM : 261401011
var
  n: integer;
begin
  write('Masukkan angka hari (1-7): '); readln(n);
  case n of
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');
  else
    writeln('Angka tidak valid! Masukkan 1-7.');
  end;
end.

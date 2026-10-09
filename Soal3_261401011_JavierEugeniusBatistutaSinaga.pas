 program Soal3;
// Nama : Javier Eugenius Batistuta Sinaga
// NIM : 261401011
var
  n, kategori, i: integer;
begin
  write('Masukkan N: '); readln(n);
  write('Kategori (1: Ganjil, 2: Genap): '); readln(kategori);
  writeln('Hasil deret:');
  i := 0;
  while i < n do
  begin
    i := i + 1;
   
    if (kategori = 1) and (i mod 2 = 0) then continue;
    if (kategori = 2) and (i mod 2 <> 0) then continue;
    
    if i mod 5 = 0 then continue;
    write(i, ' ');
  end;
  writeln;
end.

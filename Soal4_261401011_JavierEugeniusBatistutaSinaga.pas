program Soal4;
// Nama : Javier Eugenius Batistuta Sinaga
// NIM : 261401011
var
  pilih: integer;
  a, b: real;
  x, y: integer;
  lagi: char;
begin
  repeat
    writeln('===== MENU KALKULATOR =====');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): '); readln(pilih);

    case pilih of
      1, 2, 3, 4:
        begin
          write('Angka pertama : '); readln(a);
          write('Angka kedua   : '); readln(b);
          case pilih of
            1: writeln('Hasil: ', a:0:2, ' + ', b:0:2, ' = ', (a + b):0:2);
            2: writeln('Hasil: ', a:0:2, ' - ', b:0:2, ' = ', (a - b):0:2);
            3: writeln('Hasil: ', a:0:2, ' * ', b:0:2, ' = ', (a * b):0:2);
            4: if b = 0 then
                 writeln('Error: pembagian dengan nol!')
               else
                 writeln('Hasil: ', a:0:2, ' / ', b:0:2, ' = ', (a / b):0:2);
          end;
        end;
      5:
        begin
          write('Bilangan bulat pertama : '); readln(x);
          write('Bilangan bulat kedua   : '); readln(y);
          if y = 0 then
            writeln('Error: pembagi tidak boleh nol!')
          else
          begin
            writeln('Hasil: ', x, ' DIV ', y, ' = ', x div y);
            writeln('Hasil: ', x, ' MOD ', y, ' = ', x mod y);
          end;
        end;
    else
      writeln('Pilihan tidak valid!');
    end;

    write('Apakah ingin melakukan perhitungan lagi?(Y/T): ');
    readln(lagi);
  until (lagi = 'T') or (lagi = 't');
end.

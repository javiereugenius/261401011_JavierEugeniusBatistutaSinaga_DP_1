program Soal2;
// Nama : Javier Eugenius Batistuta Sinaga
// NIM : 261401011
const
  SANDI = 'pascal123';
var
  input: string;
  kesempatan: integer;
  berhasil: boolean;
begin
  kesempatan := 0;
  berhasil := false;
  repeat
    kesempatan := kesempatan + 1;
    write('Masukkan kata sandi (percobaan ', kesempatan, '/3): ');
    readln(input);
    if input = SANDI then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;
    end
    else
      writeln('Kata sandi salah!');
  until kesempatan >= 3;

  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
end.

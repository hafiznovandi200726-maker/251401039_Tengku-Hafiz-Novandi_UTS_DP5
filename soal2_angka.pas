program Angkarahasialekbray;     
uses crt;                       

var
  angka, tebakan: integer;       // Deklarasi variabel bertipe integer:
                          

begin
  clrscr;                  
  
  angka := 3;                    // Menetapkan angka rahasia yang benar adalah 3

  // program akan terus berjalan dan mengulang sampai pemain menebak angka dengan benar
  repeat
    write('Masukkan tebakan kamu : ');   
    readln(tebakan);

    // program ngecek apakah angka tebakan yang di input terlalu besar, terlalu kecil, atau tepat
    if tebakan > angka then
      writeln('Terlalu besar!')           // Jika tebakan lebih besar dari angka rahasia
    else if tebakan < angka then
      writeln('Terlalu kecil!')           // Jika tebakan lebih kecil dari angka rahasia
    else
      writeln('Selamat, kamu benar!');    // Jika tebakan sama dengan angka rahasia

  until tebakan = angka;                  // Ulangi terus sampai tebakan benar

end.

program toko_cici_lekbray;    

uses crt;                     

var
  buku, pulpen, pensil, penghapus, penggaris : integer;  // Variabel jumlah barang yang dibeli
  totalHarga, diskon, potonganQRIS, pajakTunai, totalPotongan, hargaAkhir : real; // Variabel untuk perhitungan harga
  metodeBayar : char;            // Variabel untuk pilihan metode pembayaran

begin
  clrscr;                        // Membersihkan layar sebelum program dijalankan

  // Input jumlah masing-masing barang yang akan kita beli.
  write('Masukkan jumlah Buku      : '); 
  readln(buku);
  write('Masukkan jumlah Pulpen    : ');
  readln(pulpen);
  write('Masukkan jumlah Pensil    : '); 
  readln(pensil);
  write('Masukkan jumlah Penghapus : '); 
  readln(penghapus);
  write('Masukkan jumlah Penggaris : ');
  readln(penggaris);

  // menghitung total harga dari jumlah barang dikali dengan harga barang
  totalHarga := (buku * 25000) + (pulpen * 5000) + (pensil * 3000) + (penghapus * 2000) + (penggaris * 4000);

  //  nilai awal diskon, potongan QRIS, dan pajak Tunai 
  diskon := 0;
  potonganQRIS := 0;
  pajakTunai := 0;

  // Jika total belanja mencapai atau lebih dari Rp100.000 maka kita dapat diskon 10%
  if totalHarga >= 100000 then
    diskon := totalHarga * 0.10;

  //  memilih metode pembayaran
  write('Pilih metode pembayaran ( Q = QRIS, T = Tunai ): ');
  readln(metodeBayar);

  // Jika pengguna memilih QRIS, dapat potongan Rp5.000
  // Jika memilih Tunai, dikenakan pajak 5%
  if (metodeBayar = 'Q')  then
    potonganQRIS := 5000
  else if (metodeBayar = 'T')  then
    pajakTunai := totalHarga * 0.05;

  // Menghitung total potongan 
  totalPotongan := diskon + potonganQRIS;

  // Menghitung harga akhir setelah dikurangi potongan dan ditambah pajak
  hargaAkhir := totalHarga - totalPotongan + pajakTunai;

  // Menampilkan hasil output
  writeln('Total Harga sebelum discount  = Rp ', totalHarga:0:0);
  writeln('Seluruh potongan dan discount = Rp ', totalPotongan:0:0);
  writeln('Total Akhir                   = Rp ', hargaAkhir:0:0);

end.

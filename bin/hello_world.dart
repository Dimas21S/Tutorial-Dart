import '../lib/menu.dart';
import 'dart:io';

void main() {
  // Tambah menu awal
  Menu.simpanMenu(1, "Nasi Goreng", 15000, "Nasi dengan bumbu spesial");
  Menu.simpanMenu(2, "Mie Ayam", 12000, "Mie dengan topping ayam");

  print("Opsi pilihan: ");
  print("1. Tampilkan Menu");
  print("2. Tambah Menu");
  print("3. Update Menu");
  print("4. Hapus Menu");

  stdout.write("Masukkan pilihan anda: ");
  int? pilihan = int.tryParse(stdin.readLineSync()!);

  switch (pilihan) {
    case 1:
      print("\nMenu yang tersedia:");
      for (var menu in Menu.getMenu()) {
        print("${menu.id} - ${menu.judul} - Rp${menu.harga}");
      }
      break;

    case 2:
      stdout.write("Masukkan ID menu baru: ");
      int? id = int.tryParse(stdin.readLineSync()!);

      stdout.write("Masukkan judul menu baru: ");
      String? judul = stdin.readLineSync();

      stdout.write("Masukkan harga menu baru: ");
      int? harga = int.tryParse(stdin.readLineSync()!);

      stdout.write("Masukkan deskripsi menu baru: ");
      String? deskripsi = stdin.readLineSync();

      if (id != null && judul != null && harga != null && deskripsi != null) {
        Menu.simpanMenu(id, judul, harga, deskripsi);
        print("Menu berhasil ditambahkan.");
      } else {
        print("Input tidak valid.");
      }
      break;

    case 3:
      stdout.write("Masukkan ID menu yang ingin diupdate: ");
      int? id = int.tryParse(stdin.readLineSync()!);

      stdout.write("Masukkan judul baru: ");
      String? judul = stdin.readLineSync();

      stdout.write("Masukkan harga baru: ");
      int? harga = int.tryParse(stdin.readLineSync()!);

      stdout.write("Masukkan deskripsi baru: ");
      String? deskripsi = stdin.readLineSync();

      if (id != null && judul != null && harga != null && deskripsi != null) {
        Menu.updateMenu(id, judul, harga, deskripsi);
        print("Menu berhasil diupdate.");
      } else {
        print("Input tidak valid.");
      }
      break;

    case 4:
      stdout.write("Masukkan ID menu yang ingin dihapus: ");
      int? id = int.tryParse(stdin.readLineSync()!);

      if (id != null) {
        Menu.deleteMenu(id);
        print("Menu berhasil dihapus.");
      } else {
        print("Input tidak valid.");
      }
      break;

    default:
      print("Pilihan tidak valid.");
  }

  // Tampilkan menu setelah perubahan
  print("\nDaftar menu saat ini:");
  for (var menu in Menu.getMenu()) {
    print("${menu.id} - ${menu.judul} - Rp${menu.harga}");
  }
}

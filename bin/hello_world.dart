import '../lib/menu.dart';

void main() {
  Menu.simpanMenu(1, "Nasi Goreng", 15000, "Nasi dengan bumbu spesial");
  Menu.simpanMenu(2, "Mie Ayam", 12000, "Mie dengan topping ayam");

  for (var menu in Menu.getMenu()) {
    print("${menu.id} - ${menu.judul} - Rp${menu.harga}");
  }

  Menu.updateMenu(1, "Nasi Goreng Special", 18000, "Nasi dengan topping ayam dan telur");
  Menu.deleteMenu(2);

  print("\nSetelah update dan delete:");
  for (var menu in Menu.getMenu()) {
    print("${menu.id} - ${menu.judul} - Rp${menu.harga}");
  }
}

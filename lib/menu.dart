class Menu {
    int id;
    String judul;
    int harga;
    String deskripsi;
    static List<Menu> SimpanData = [];

    Menu({required this.id, required this.judul, required this.harga, required this.deskripsi});

    // Method untuk menyimpan data menu
    static void simpanMenu(int id, String judul, int harga, String deskripsi) {
        SimpanData.add(
            Menu(
                id: id,
                judul: judul,
                harga: harga,
                deskripsi: deskripsi,
            ),
        );
    }

    // Method untuk membuat sebuah menu
    static Menu createMenu(int id, String judul, int harga, String deskripsi) {
        return Menu(id: id, judul: judul, harga: harga, deskripsi: deskripsi);
    }

    // Method untuk mengembalikan data menu
    static List<Menu> getMenu() {
        return SimpanData;
    }

    // Method untuk menghapus data menu
    static void deleteMenu(int id) {
        SimpanData.removeWhere((menu) => menu.id == id);
    }

    // Method untuk memperbarui data menu
    static void updateMenu(int id, String judul, int harga, String deskripsi) {
        var index = SimpanData.indexWhere((menu) => menu.id == id);
        if (index != -1) {
            SimpanData[index] = Menu(id: id, judul: judul, harga: harga, deskripsi: deskripsi);
        }
    }
}
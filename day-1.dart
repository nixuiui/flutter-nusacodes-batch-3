void main() {
  var nilai = 100.0;
  print('Nilai: $nilai');

  nilai = 80;
  print('Nilai: $nilai');

  nilai = 300.9;
  print('Nilai: $nilai');

  final height = nilai;
  print('Height: $height\cm');

  const pi = 14;
  print('PI: $pi');

  final p = 10;
  final l = 4;
  final luasPersegiPanjang = p * l;
  print('luasPersegiPanjang: ${luasPersegiPanjang}');

  final mod = 20 % 2;
  print('Ganjil: ${mod == 1}');

  final nilaiMtk = 60;
  final mtkLulus = nilaiMtk >= 70;
  print("Nilai MTK: ${nilaiMtk}");
  print("Nilai MTK Lulus: ${mtkLulus}");

  final nilaiBahasa = 70;
  final bahasaLulus = nilaiBahasa >= 75;
  print("Nilai Bahasa: ${nilaiBahasa}");
  print("Nilai Bahasa Lulus: ${bahasaLulus}");

  if (mtkLulus || bahasaLulus) {
    print('Naik Kelas');
  } else {
    print('Tidak Naik Kelas');
  }

  int age = 50;
  if (age <= 17) {
    print("Usia $age adalah anak-anak");
  } else if (age <= 40) {
    print("Usia $age adalah dewasa");
  } else if (age <= 70) {
    print("Usia $age adalah orang tua");
  } else {
    print("Usia $age adalah tidak ada kategori usia");
  }

  final day = 2;
  switch (day) {
    case 1:
      print("Hari Senin");
    case 2:
      print("Hari Selasa");
    case 3:
      print("Hari Rabu");
    default:
      print("Tidak diketahui");
  }

  for (var i = 0; i < 10; i++) {
    if (i % 2 == 1) {
      print('i = $i');
    }
  }

  print('-------');

  var b = 0;
  while (b < 10) {
    print('b = $b');
    b++;
  }

  print('-------');

  hello("Dimas");
  final luasSegi3 = luasSegitiga(10, 20);
  print('Luas Segitiga: $luasSegi3');

  final luasPPanjang = luasPanjang(lebar: 12);
  print('Luas Persegi Panjang: $luasPPanjang');

  // process1();
  // process2();

  var fruits2 = ["Banana", "Apple"];
  var fruits3 = <String>[];

  final fruits = ["Apple", "Banana", "Orange"];
  fruits.add("Dragon Fruits");
  fruits.addAll(["Nanas", "Melon"]);
  for (var i = 0; i < fruits.length; i++) {
    print('fruits: ${fruits[i]}');
  }

  Set<String> emails = {
    "niki@gmail.com",
    "niko@gmail.com",
  };
  emails.add("andi@gmail.com");
  emails.add("andi@gmail.com");
  print("emails: ${emails}");

  Map<String, dynamic> profile = {"name": "Niki", "age": 40, "gender": "male"};
  profile['class'] = 'Kelas A';
  profile['class'] = 'Kelas B';
  profile.remove("age");
  print('profile: ${profile}');
  print('profile: ${profile['name']}');

  final listDynamic = ["A", 2, "Orange", emails, profile];
  print('listDynamic: $listDynamic');
}

Future<void> process1() async {
  print("Process 1: A");
  await Future.delayed(Duration(milliseconds: 500));
  print("Process 1: B");
  await Future.delayed(Duration(milliseconds: 500));
  print("Process 1: C");
  await Future.delayed(Duration(milliseconds: 500));
  print("Process 1: D");
}

Future<void> process2() async {
  print("Process 2: A");
  await Future.delayed(Duration(milliseconds: 500));
  print("Process 2: B");
  await Future.delayed(Duration(milliseconds: 500));
  print("Process 2: C");
  await Future.delayed(Duration(milliseconds: 500));
  print("Process 2: D");
}

// positional parameter
// named parameter

void hello(String name) {
  print("Hello, $name");
}

// positional parameter
double luasSegitiga(int a, int t) {
  return (a * t) / 2;
}

// named parameter
int luasPanjang({
  int? panjang,
  int? lebar,
}) {
  return (panjang ?? 1) * (lebar ?? 1);
}

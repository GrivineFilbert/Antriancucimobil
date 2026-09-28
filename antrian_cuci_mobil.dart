import 'dart:io';
void main() {
  void tampilmenu () {
    print("Selamat datang !");
    print("=====================");
    print("pilih salah satu menu dibawah");
    print("1 : Tambah Antrian");
    print("2 : lihat Waiting List");
    print("3 : Lihat POS");
    print("4 : Selesaikan POS");
    print("5 : Keluar");
  


  }

  var jalan=true;
  List WaitingList = [];
  Map Pos1 = {'Plat' : null};
  Map Pos2 = {'Plat' : null};
  Map Pos3 = {'Plat' : null};
  
  while (jalan==true) {
    tampilmenu ();
    stdout.write("Pilih menu(1/2/3/4/5):");
    String input1 = stdin.readLineSync()!;

    if (input1 == '1') {
      stdout.write("Masukkan Plat Kendaraan " ) ;
    String input1 = stdin.readLineSync()!;


    if (Pos1['Plat'] == null) {
      Pos1['Plat'] = input1;
    } else if (Pos2['Plat'] == null) {
      Pos2['Plat'] = input1;
    }else if (Pos3['Plat'] == null) {
      Pos3['Plat'] = input1;
    } else {
      WaitingList.add(input1);
    }

    }


    if (input1 == '2') {
      for (var i = 0; i < WaitingList.length; i++) {
        print('kendaraan Ke-${i+1}= ${WaitingList[i]}');

      }

    }

    if (input1 == '3') {
      print ('Pos 1 : Nomor kendaraan ${Pos1['Plat']} ');
      print ('Pos 2 : Nomor kendaraan ${Pos2['Plat']} ');
      print ('pos 3 : Nomor kendaraan ${Pos3['Plat']} ');
  
    }

    if (input1 == '4') {
      stdout.write("Masukkan Pos 1/2/3 " ) ;
    String input1 = stdin.readLineSync()!;

      if (input1 == '1') {
        print('Kendaraan Pos1 ${Pos1['Plat']} telah selesai');
      Pos1 = {'Plat' : null};
      if (WaitingList.isNotEmpty) {
        Pos1['Plat'] = WaitingList.first;
      WaitingList.removeAt(0);
      }
      
    }
    if (input1 == '2') {
        print('Kendaraan Pos2 ${Pos2['Plat']} telah selesai');
      Pos2 = {'Plat' : null};
      Pos2['Plat'] = WaitingList.first;
      WaitingList.removeAt(0);
    }
    if (input1 == '3') {
        print('Kendaraan Pos3 ${Pos3['Plat']} telah selesai');
      Pos3 = {'Plat' : null};
      Pos3['Plat'] = WaitingList.first;
      WaitingList.removeAt(0);
    } else {
      stdout.write("Masukkan Pos 1/2/3 " ) ;
    String input1 = stdin.readLineSync()!;
    }

    }

    if (input1 == '5') {
      exit(0);
    }
  }
}

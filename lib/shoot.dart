import 'dart:io';

reload() {
    print("Enter amount of bullet to load");
    
    String? bulletNum = stdin.readLineSync();
    int bullToInt = int.parse(bulletNum ?? '0');

    print("$bullToInt was loaded");
    for (var i = 0; i < bullToInt; i++) {
        print('boom pow!');
    }
}
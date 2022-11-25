//1.1
// import 'dart:io';
// import 'dart:math';

// void main() {
//   var arr = [];
//   for (int i = 0; i < 10; i++) {
//     arr.add(Random().nextInt(10));
//   }
//   print(arr);

//   int min_index = 0;
//   int min = arr.first;
//   for (int i = 0; i < arr.length; i++) {
//     if (min > arr[i]) {
//       min = arr[i];
//       min_index = i;
//     }
//   }
//   print(min);
//   print(min_index);
// }





//1.2 задание
// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';
// import 'dart:math';

// var list = [];
// void main() {
//   for (int i = 0; i < 1000; i++) {
//     int? a = int.parse(stdin.readLineSync()!);
//     if (a > 0) {
//       list.add(a);
//       print(list);
//     } else  if (a == 0){
//       print(list);

//       var sum = list.reduce((i, j) => i + j);
//       print('сумма = $sum');
//       var mult = list.reduce((i, j) => i * j);
//       print('произведение = $mult');
//       var avg = sum / list.length;
//       print('сред. = $avg');
//       break;
//     }
//   }
// }





// 1.3 задание
// import 'dart:io';
// import 'dart:math';

// void main() {
//   List<String> list = [];

//   bool a = true;

//   while (a) {
//     String b = stdin.readLineSync()!;
//     if (b != " " && b != "") {
//       list.add(b);
//     } else {
//       a = false;
//     }
//   }

//   int min = int.parse(list[0]);
//   int min_lenght = list[0].length;
//   int max = int.parse(list[0]);
//   int max_lenght = list[0].length;

//   for (int i = 0; i < list.length; i++) {
//     if (min_lenght < list[i].length) {
//       min = int.parse(list[i]);
//       min_lenght = list[i].length;
//     } else if (max_lenght > list[i].length) {
//       max = int.parse(list[i]);
//       max_lenght = list[i].length;
//     }
//   }
//   print(min);
//   print(max);
// }





//1.4 задание

// import 'dart:io';
// import 'dart:math';
// void main(){

// print ('Vvedite Minimum=');
// int a = int.parse(stdin.readLineSync()!);


// print ('Vvedite Maximum=');
// int z = int.parse(stdin.readLineSync()!);

// var cg=[];
// for (int i = 0; i<10;i++){
//   cg.add(Random().nextInt(z-a+1)+a);
// }

// for (int i = 0; i<cg.length;i++){
//   stdout.write("${cg[i]} ");
// }
// }






//1.5 задание
// import 'dart:io';
// import 'dart:math';
// void main(){

// String a =  stdin.readLineSync ()!;


// int v = 1;
// if (a!=""){
// for (int i = 0; i<a.length;i++){
//   if (a[i]==" "){
//   v = v + 1;
//   }

// }
// print("Kolvo slov= $v");
// }
// else {
//   print("Kolvo slov= 0");

// }
// print("Start: $a :End");
// }







//2.1 задание
// import 'dart:io';
// import 'dart:math';
// void main(){

// List<int> mas = [];
//   int a = 303;
//   var f;
//   for (int i = 0; i < 100; i++) {
//    f = a - 3;
//     mas.add(f);
//     a = f;
//   }
//   print(" $mas");
// }







//2.2 задание
// import 'dart:io';
// import 'dart:math';

// void main(){

// List<int> nums = [];
//  for (int i=0; i<200; i++ ){
//   if ((i % 2) != 0){
//     nums.add(i);
//   }
//  }

//  print(nums);

// }





//2.3 задание
// import 'dart:io';
// import 'dart:math';

// void main(){

// List<List<int>> nums = List.generate(
//       6, (i) => List.generate(6, (j) => 1 + Random().nextInt(2 - 1)));

//   for (int j = 0; j < nums.length-1 ; j++) {
//     for (int i = 0; i < nums.length-1 ; i++) {
//       nums[i + 1][j + 1] = nums[i][j] + nums[i][j];
//       stdout.write("${nums[i][j]} ");
//     }
//     print('');
//   }

// }






//2.4 задание

// import 'dart:io';
// import 'dart:math';

// List<int> vichislenie(List<List<int>> temperature) {
//   List<int> sr_temp = [];
//   for (int i = 0; i < 12; i++) {
//       int a = 0;
//     for (int j = 0; j < 30; j++) {
//     a += temperature[i][j];
//     }
//    a ~/= 30; 
//   sr_temp.add(a);
//   }
//   sr_temp.sort();
//   return (sr_temp);
// }

// void main() {
//   int max = 31;
//   int min = -12;

//   List<List<int>> temperature = List.generate(
//       12, (i) => List.generate(30, (j) => min + Random().nextInt(max - min)));
//     List<int> sr_temp = vichislenie(temperature);
//     print(sr_temp);
// }







//2.5 задание 

// import 'dart:collection';
// import 'dart:io';
// import 'dart:math';

// Map<String,dynamic> vichislenie(Map<String,dynamic> temperature) {
// for(String key in temperature.keys){
//   double a = 0;
//   for (int i=0; i<30;i++){
//     a +=temperature[key][i];
//   }
// temperature[key] = a ~/30;
// }

//   return (temperature);
// }

// void main() { 
// Map <String,dynamic> temperature = {
// 'Jan': List.generate(30, (i) => -20 + Random().nextInt(-10 - -20)),
// 'Feb': List.generate(30, (i) => -13 + Random().nextInt(-5 - -13)),
// 'Mart': List.generate(30, (i) => 1 + Random().nextInt(8 - -1)),
// 'Apr': List.generate(30, (i) => 5 + Random().nextInt(12 - -5)),
// 'May': List.generate(30, (i) => 10 + Random().nextInt(18 - 10)),
// 'Jun': List.generate(30, (i) => 17 + Random().nextInt(26 - 17)),
// 'Jul': List.generate(30, (i) => 21 + Random().nextInt(28 - 21)),
// 'Avg': List.generate(30, (i) => 18 + Random().nextInt(24 - 18)),
// 'Sen': List.generate(30, (i) => 12 + Random().nextInt(15 - 12)),
// 'Oct': List.generate(30, (i) => 0 + Random().nextInt(7 - 0)),
// 'Nov': List.generate(30, (i) => -10 + Random().nextInt(3 - -10)),
// 'Dec': List.generate(30, (i) => -19 + Random().nextInt(-11 - -19)),

// };

// print(vichislenie(temperature));
// }






//3.1   задание 

// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';
// import 'dart:math';
 
// List<int> transforming(String bub_0) {// функция принимает стринг
//   List<int> a = []; // создается пустой массив
//   String bub = ""; // создается пустоая строка
//   bool m = true; //бул м труе
 
//   for (int i = 0; i < bub_0.length; i++) { //перебор строки
//     while (bub_0[i] != " " && m) { //работает цикл пока текущий элемнт не пробел
//       bub += bub_0[i];
//       if (i < bub_0.length - 1) { //проверка есть ли следущее
//         i++; //если есть то и++
//       } else {
//         m = false; //если нет то заканчиваем перебор
//       }
//     }
//     a.add(int.parse(bub)); //добавляет число в массив
//     bub = ""; //обнуляет временную переменную
//   }
//   return (a);
// }
 
// void main() async {
//   final file = File('input.txt');
//   var output = File('output.txt');
//   Stream<String> lines = file.openRead() //читает файл
//       .transform(utf8.decoder) // Decode bytes to UTF-8.
//       .transform(LineSplitter()); // Convert stream to individual lines.
//   List<String> ai = []; // создаем пустой массив, который принимает строки
//   await for (var line in lines) { // перебирает строки
//     ai.add(line); // каждую линию добавляют как отделаьный элемент массива
//   }
//   List<int> winning_numbers = transforming(ai[0]); // переводим первую строку в целочисленный массив
//   List<int> numbers_tickets = transforming(ai[1]); // переводим первую строку в целочисленный массив
//   var sink = output.openWrite(); //  открываем файл output.
//   for (int i = 0; i < numbers_tickets[0]; i++) { //  проверка строк ( сколько будет тикетов, столько и строк )
//     List<int> ticket = transforming(ai[i + 2]);
//     int num = 0; // создание пустой переменной, для того, сколько в текущем билете совпадающий чисел
//     for (int n = 0; n < winning_numbers.length; n++) { 
//       for (int m = 0; m < ticket.length; m++) {
//         if (ticket[m] == winning_numbers[n]) {
//           num++; // нам ++ если число в тикете совпадает с правильным числом
//         }
//       }
//     }

//     if (num >= 3) { // если 3 числа совпадает 
//       sink.write('Lucky\n'); 
//     } else sink.write('Unlucky\n');

//   }
//   sink.close(); // закрываем файл output.
// }







//3.2   задание  




























//3.3 


// import 'dart:io';
// import 'dart:math';
// import 'dart:collection';
// import 'dart:async';
// import 'dart:convert';

// List<int> transforming(String bub_0) {
//   // функция принимает стринг
//   List<int> a = []; // создается пустой массив
//   String bub = ""; // создается пустоая строка
//   bool m = true; //бул м труе

//   for (int i = 0; i < bub_0.length; i++) {
//     //перебор строки
//     while (bub_0[i] != " " && m) {
//       //работает цикл пока текущий элемнт не пробел
//       bub += bub_0[i];
//       if (i < bub_0.length - 1) {
//         //проверка есть ли следущее
//         i++; //если есть то и++
//       } else {
//         m = false; //если нет то заканчиваем перебор
//       }
//     }
//     a.add(int.parse(bub)); //добавляет число в массив
//     bub = ""; //обнуляет временную переменную
//   }
//   return (a);
// }

// void main() async {
//   // var list = [1, 9, 6, 7, 4, 8, 5];
//   final file = File('height.txt');

//   Stream<String> lines = file
//       .openRead() //читает файл
//       .transform(utf8.decoder) // Decode bytes to UTF-8.
//       .transform(LineSplitter()); // Convert stream to individual lines.
//   List<String> ai = []; // создаем пустой массив, который принимает строки
//   await for (var line in lines) {
//     // перебирает строки
//     ai.add(line); // каждую линию добавляют как отделаьный элемент массива
//   }
//   var list = transforming(ai[0]);
 
//   int volume = 0;
//   for (int i = 0; i < list.length - 1; i++) {
//     for (int j = 1 + i; j < list.length; j++) {
//       int visot = list[i] < list[j] ? list[i] : list[j];
//       int lenght = j - i;
//       if (volume < visot * lenght) {
//         volume = visot * lenght;
//       }
//     }
//   }
//   print(volume);
// }









//4.1 


// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';
// import 'dart:math';
 
// void main() {
//   int n = int.parse(stdin.readLineSync()!);
//   int proiz = 1;
//   for (int i = 1; i <= n; i++) {
//     if (i % 3 == 0) {
//       proiz *= i;
//     }
//   }
//   print(proiz);
// }








//4.2



// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';
// import 'dart:math';
 
// void main() async {
//   final file = File('numsTask2.txt');
//   String nums_txt = "";
//   Stream<String> lines = file
//       .openRead()
//       .transform(utf8.decoder) // Decode bytes to UTF-8.
//       .transform(LineSplitter()); // Convert to individual lines.
 
//     await for (var line in lines) {
//       nums_txt += line;
//     }
   
  
 
//   List<double> ai = [];
//   String vrem = "";
//   double out = 0;
 
//   for (int i = 0; i < nums_txt.length; i++) {
//     if (nums_txt[i] != ";") {
//       vrem += nums_txt[i];
//     }
//     if (nums_txt[i] == ";" || i + 1 == nums_txt.length) {
//       ai.add(double.parse(vrem));
//       vrem = "";
//     }
//   }
 
//   for (int i = 0; i < ai.length; i++) {
//     if (ai[i] > 0) {
//       out += ai[i];
//     }
//     if (ai[i] == 0) {
//       i = ai.length;
//     }
//   }
//   print(out);
// }





//4.3




// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';
// import 'dart:math';
 
// void main() async {
//   final file = File('numsTask3.txt');
//   String nums_txt = "";
//   Stream<String> lines = file
//       .openRead()
//       .transform(utf8.decoder) // Decode bytes to UTF-8.
//       .transform(LineSplitter()); // Convert to individual lines.
//   try {
//     await for (var line in lines) {
//       nums_txt += line;
//     }
//   } catch (e) {
//     print('Error: $e');
//   }
 
//   List<int> ai = [];
//   String vrem = "";
 
//   for (int i = 0; i < nums_txt.length; i++) {
//     if (nums_txt[i] != ",") {
//       vrem += nums_txt[i];
//     }
//     if (nums_txt[i] == "," || i + 1 == nums_txt.length) {
//       ai.add(int.parse(vrem));
//       vrem = "";
//     }
//   }
 
//   int min = ai.first;
//   int max = ai.first;
 
//   for (int i = 0; i < ai.length; i++) {
//     if (ai[i] > max) {
//       max = ai[i];
//     }
//     if (ai[i] < min) {
//       min = ai[i];
//     }
//     if (ai[i] == 0) {
//       i = ai.length;
//     }
//   }
 
//   print(min);
//   print(max);
 
// }






//4.4

// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';
// import 'dart:math';
 
// void main() async {
//   final file = File('numsTask4.txt');
//   String nums_txt = "";
//   Stream<String> lines = file
//       .openRead()
//       .transform(utf8.decoder) // Decode bytes to UTF-8.
//       .transform(LineSplitter()); // Convert Stream to individual lines.
//   try {
//     await for (var line in lines) {
//       nums_txt += line;
//     }
//   } catch (e) {
//     print('Error: $e');
//   }
 
//   List<int> ai = [];
//   String vrem = "";
 
//   for (int i = 0; i < nums_txt.length; i++) {
//     if (nums_txt[i] != " ") {
//       vrem += nums_txt[i];
//     }
//     if (nums_txt[i] == " " || i + 1 == nums_txt.length) {
//       ai.add(int.parse(vrem));
//       vrem = "";
//     }
//   }
//   int otvet = 0;
//   for (int i = 0; i < ai.length - 1; i++) {
//     if (ai[i] == ai[i + 1]) {
//       int vrem = 1;
//       bool vrem_0 = true;
//       while (ai[i] == ai[i + 1] && vrem_0) {
//         vrem++;
//         if (i < ai.length-2 ) {
//           i++;
//         } else {
//           vrem_0 = false;
//         }
//       }
//       otvet += vrem;
//     }
//   }
//   print(otvet);
// }






//4.5



// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';
// import 'dart:math';
 
// void main() {
//   int x_0 = -1;
//   int x_1 = 3;
//   int y_0 = -2;
//   int y_1 = 4;
//   print("Введите А");
//   double a = double.parse(stdin.readLineSync()!);
//   print("Введите В");
//   double b = double.parse(stdin.readLineSync()!);
 
//   if (x_0 < a && a < x_1 && y_0 < b && b < y_1) {
//     print("Входит");
//   } else {
//     print("Не входит");
//   }
// }







//4.6




// import 'dart:io';
// import 'dart:math';
// void main() {
// int x1 = -2;
// int x2 = 0;
// int x3 = 2;
// int y1 = -3;
// int y2 = 2;
// int y3 = -3;
// print("Введите Х");
// double x0 = double.parse(stdin.readLineSync()!);
// print("Введите Y");
// double y0 = double.parse(stdin.readLineSync()!);
 
 
// double a = (x1 - x0) * (y2 - y1) - (x2 - x1) * (y1 - y0);
// double b = (x2 - x0) * (y3 - y2) - (x3 - x2) * (y2 - y0);
// double c = (x3 - x0) * (y1 - y3) - (x1 - x3) * (y3 - y0);
 
// if ((a >= 0 && b >= 0 && c >= 0) || (a <= 0 && b <= 0 && c <= 0)){
//  print("входит");
// } else{print("не входит");}
// }






//5.


















// 6.1
// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';
// import 'dart:math';

// void main() async {
//   final file = File('numsTask.txt');
// Stream<String> a =
//     file.openRead().transform(utf8.decoder).transform(LineSplitter());
// List<String> b = [];
// await for (var line in a) {
//   b.add(line);
// }
// String done = " ";
// for (int i = 0; i < b.length; i++) {
//   var string = b[i];
//   final len = string.split('');
//   int num = len.length;
//   if (num % 2 != 0) {
//     done += b[i] + " ";
//   }
// }
// print(done);
// }








// void main() async {
//   final database = openDatabase(join(await getDatabasesPath(), 'stock.db'),
//       onCreate: (db, version) {
//     return db.execute(
//         'CREATE TABLE stocks (id INTEGER PRIMARY KEY, detonator REAL, pekadetonator REAL, amoniumnitrate REAL )');
//   }, version: 1);

//   Future<void> insertStock(Stock stock) async {
//     final Database db = await database;
//     await db.insert(
//       'stocks',
//       stock.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }

//   Future<List<Stock>> stocks() async {
//     final Database db = await database;
//     final List<Map<String, dynamic>> maps = await db.query('stocks');

//     return List.generate(maps.length, (i) {
//       return Stock(
//           id: maps[i]['id'],
//           detonator: maps[i]['detonator'],
//           pekaDetonator: maps[i]['pekadetonator'],
//           amoniumNitrate: maps[i]['amoniumnitrate']);
//     });
//   }

//   // Future<void> updateStock(Stock stock) async {
//   //   final db = await database;

//   //   await db.update('stocks', stock.toMap(),
//   //   where: 'id = ?',
//   //   whereArgs: [stock.id]
//   //   );
//   // }

//   // Future<void> deleteStock(int id) async {
//   //   final db = await database;

//   //   await db.delete('stocks',
//   //   where: 'id = ?',
//   //   whereArgs: [id]
//   //   );
//   // }

//   final stockAwal =
//       Stock(id: 0, detonator: 549, pekaDetonator: 107.6, amoniumNitrate: 0);

//   await insertStock(stockAwal);

//   print(await stocks());
// }

// class Stock {
//   final int id;
//   final double detonator;
//   final double pekaDetonator;
//   final double amoniumNitrate;

//   Stock({this.id, this.detonator, this.pekaDetonator, this.amoniumNitrate});

//   Map<String, dynamic> toMap() => {
//         'id': id,
//         'detonator': detonator,
//         'pekadetonator': pekaDetonator,
//         'amoniumnitrate': amoniumNitrate
//       };

//   @override
//   String toString() {
//     return 'Dog{id: $id, detonator: $detonator, pekaDetonator: $pekaDetonator, amoniumNitrate :$amoniumNitrate}';
//   }
// }

// class SimpleCalculator extends StatefulWidget {
//   @override
//   _SimpleCalculatorState createState() => _SimpleCalculatorState();
// }

// class _SimpleCalculatorState extends State<SimpleCalculator> {
//   int firstNumber = 0;
//   int secondNumber = 1;
//   int result = 0;

//   final inputText = TextEditingController();
//   final inputText2 = TextEditingController();

//   @override
//   void dispose() {
//     inputText.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Calculator App",
//       theme: new ThemeData.dark(),
//       home: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Center(
//             child: Container(
//               width: 150,
//               height: 300,
//               decoration: BoxDecoration(color: Colors.amber),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   TextField(
//                     controller: inputText,
//                   ),
//                   // Text(inputText.text),
//                   Text(
//                     '+ ',
//                     style: TextStyle(fontSize: 32),
//                   ),
//                   TextField(
//                     controller: inputText2,
//                   ),
//                   // Text(inputText2.text),
//                   Text('= '),
//                   Text('$result'),
//                   RaisedButton(
//                       onLongPress: () {
//                         setState(() {
//                           firstNumber = int.parse(inputText.text);
//                           secondNumber = int.parse(inputText2.text);
//                           result = firstNumber - secondNumber;
//                         });
//                       },
//                       child: Text('sum'),
//                       onPressed: () {
//                         setState(() {
//                           firstNumber = int.parse(inputText.text);
//                           secondNumber = int.parse(inputText2.text);
//                           result = firstNumber + secondNumber;
//                         });
//                       })
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

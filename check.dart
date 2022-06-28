import 'package:mongo_dart/mongo_dart.dart';

void main() async {
  var db = Db("mongodb://srv3.enteam.pl:27030/test");
  await db.open();
  print(await db.collection('test').getIndexes());
  await db.collection('test').dropIndex(name: 'dupa');
  print('Done');
}

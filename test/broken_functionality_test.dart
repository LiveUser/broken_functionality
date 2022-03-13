import 'package:flutter_test/flutter_test.dart';
import 'package:broken_functionality/broken_functionality.dart';

void main() {
  test('Remove all elements test', () {
    List testArray = [1,2,8,11];
    testArray.removeWhen((number){
      return number < 10;
    });
    print(testArray);
  });
  test("Async removeWhen", ()async{
    List testArray = [1,2,8,11];
    await testArray.asyncRemoveWhen((number)async{
      return number < 10;
    });
    print(testArray);
  });
  test("UTC to local", ()async{
    DateTime utc = DateTime.now().toUtc();
    print(utc);
    DateTime localTimeZone = await utc.toLocalTimeZone();
    print(localTimeZone);
  });
}
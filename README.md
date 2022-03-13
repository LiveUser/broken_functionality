# Broken Functionality

 A replacement for dart/flutter functions that are no longer working for some reason(or at least that's what I believe(I'm probably wrong)).

Hecho en Puerto Rico(🇵🇷) por Radamés J. Valentín Reyes

## Import

~~~dart
import 'package:broken_functionality/broken_functionality.dart';
~~~

## List methods

### .removeWhen()

the equivalent to removeWhere()

~~~dart
List testArray = [1,2,8,11];
testArray.removeWhen((number){
	return number < 10;
});
print(testArray);
~~~

.asyncRemoveWhen()

The same thing as the one above but allows you to use async functions and await for the completion

~~~dart
List testArray = [1,2,8,11];
	await testArray.asyncRemoveWhen((number)async{
	return number < 10;
});
print(testArray);
~~~



## DateTime Methods

### .toLocalTimeZone()

the equivalent to toLocal()

~~~dart
DateTime utc = DateTime.now().toUtc();
print(utc);
DateTime localTimeZone = await utc.toLocalTimeZone();
print(localTimeZone);

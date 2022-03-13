library broken_functionality;

///removeWhere
extension ArrayExtensions on List<dynamic> {
  void removeWhen(bool Function(dynamic item) test ){
    int storedItems = length;
    for(int i = 0; i < storedItems; i++){
      if(test(this[i])){
        removeAt(i);
        i--;
        storedItems--;
      }else{
        //Do nothing
      }
    }
  }
  Future<void> asyncRemoveWhen(Future<bool> Function(dynamic item) test )async{
    int storedItems = length;
    for(int i = 0; i < storedItems; i++){
      if(await test(this[i])){
        removeAt(i);
        i--;
        storedItems--;
      }else{
        //Do nothing
      }
    }
  }
}
extension StuffRelatedToDates on DateTime{
  Future<DateTime> toLocalTimeZone(){
    return _fromUtcToLocal(this);
  }
}
Future<DateTime> _fromUtcToLocal(DateTime utc)async{
  Duration offset = DateTime.now().timeZoneOffset;
  return utc.add(offset);
}
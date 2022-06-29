import 'package:rxdart/rxdart.dart';

class SingleItemSelectionController<T>{
  final BehaviorSubject<T?> _selectedItemController = BehaviorSubject<T?>();
  Stream<T?> get selectedItemStream => _selectedItemController.stream;
  T? get selectedItem => _selectedItemController.valueOrNull;

  void setSelectedItem(T? myItem){
    _selectedItemController.add(myItem);
  }

  void dispose() {
    _selectedItemController.close();
  }
}
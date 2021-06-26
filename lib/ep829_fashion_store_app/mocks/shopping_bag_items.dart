
import 'package:flutter_notebook_13th_story/ep829_fashion_store_app/model/shopping_bag.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


List<ShoppingBag> shoppingBagItems = [

  ShoppingBag(
    count: 1,
    price: 
  ),

];

class shoppingBagList extends StateNotifier<List<ShoppingBag>>{
  shoppingBagList(List<ShoppingBag>? state) : super(state ?? []);

  increment(int index){
  }
}
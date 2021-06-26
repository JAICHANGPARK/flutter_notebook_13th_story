
import 'package:flutter_notebook_13th_story/ep829_fashion_store_app/model/shopping_bag.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


List<ShoppingBag> shoppingBagItems = [

  ShoppingBag(
    count: 1,
    price: 159.00,
    img: "https://cdn.pixabay.com/photo/2015/03/26/09/40/suit-690048__340.jpg",
    title: "Jacket",
    size: "L"
  ),
  ShoppingBag(
      count: 1,
      price: 109.00,
      img: "https://cdn.pixabay.com/photo/2017/08/01/11/48/woman-2564660_960_720.jpg",
      title: "Jeans jacket",
      size: "L"
  ),
  ShoppingBag(
      count: 1,
      price: 999.00,
      img: "https://cdn.pixabay.com/photo/2017/10/19/11/00/pendant-2867205_960_720.jpg",
      title: "Crown",
      size: "L"
  ),

];

class shoppingBagList extends StateNotifier<List<ShoppingBag>>{
  shoppingBagList(List<ShoppingBag>? state) : super(state ?? []);

  increment(int index){
  }
}
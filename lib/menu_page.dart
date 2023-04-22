import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_ordering/showdishinfo.dart';

class MenuPage extends StatelessWidget {
  //store the lunch prices, titles, descriptions
  List<String> dishes = [
    'https://insanelygoodrecipes.com/wp-content/uploads/2020/03/Lasagna-1024x536.png',
    'https://www.saveur.com/uploads/2018/11/20/YJSPVZU55JCG7F5337VK3Y3RDU.jpg?auto=webp',
    'https://insanelygoodrecipes.com/wp-content/uploads/2020/12/Ratatouille-Casserole-800x530.png',
    'https://cdn.vox-cdn.com/uploads/chorus_asset/file/7928487/hawksmoor_roast.jpg',
    'https://thumbs.dreamstime.com/z/delicious-traditional-german-dinner-sauerbraten-slowly-stewed-marinated-beef-gravy-potato-dumplings-red-cabbage-close-up-128143010.jpg',
    'https://images.chinahighlights.com/allpicture/2021/12/d247e7d25b164b77841f6022_cut_750x400_39.webp',
    'https://images.japancentre.com/page_elements/image1s/1516/original/fried-tempura-battered-prawns.jpg?1470240897',
    'https://upload.wikimedia.org/wikipedia/commons/5/5a/%22Hyderabadi_Dum_Biryani%22.jpg',
    'https://cdn.tasteatlas.com//Images/Dishes/a5973d1624d642ceb63539fb0d501a5c.jpg?w=905&h=510',
    'https://abasto.com/wp-content/uploads/paella.jpg',
  ];
  List<int> prices = [25, 21, 22, 28, 29, 26, 25, 25, 25, 26];

  List<String> dishName = [
    'Ground-Meat Lasagna',
    'Red Chile Enchiladas',
    'Ratatouille',
    'Sunday Roast',
    'Sauerbratten',
    'Peking Roast Duck',
    'Tempura',
    'Biryani',
    'Nihari',
    'Paella'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('1.Starters',
              style: TextStyle(color: Color(0xFF37474F))),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: dishName.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                          //how to use images from URL
                          leading: Image.network((dishes[index]),
                              width: 75, height: 100, fit: BoxFit.cover),
                          title: Text(dishName[index] +
                              '\n' +
                              '\$' +
                              prices[index].toString()),
                          trailing: SizedBox(
                            height: 100,
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(Icons.add_box,
                                    color: Colors.amber, size: 50),
                              ],
                            ),
                          ),
                          onTap: () {
                            print(
                                'You clicked element $index'); //for debugging purposes
                            //going to the second screen passing two values: index
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ShowDishInfo(
                                  indexKey: index, nameKey: dishName[index]);
                            }));
                          }),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                    height: 1, color: Colors.orangeAccent, thickness: 3),
              ),
            )
          ],
        ));
  }
}

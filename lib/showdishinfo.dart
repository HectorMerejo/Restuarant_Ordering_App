import 'package:flutter/material.dart';

class ShowDishInfo extends StatelessWidget {
  //define passing keys
  int indexKey = 0;
  String nameKey = '';

  //create constructor
  ShowDishInfo({required this.indexKey, required this.nameKey});

  //store images in a String list
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

  //store countries in a String list
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

  //store profession in a String list
  List<String> description = [
    'Whole wheat noodles and lean ground beef with grated cheese and tomato sauce.',
    'Tortillas stuffed with chicken, crab meat or beef',
    'Cooked zucchini or eggplant with tomato, garlic, onion, and leafy green herbs',
    'Roasted meat served with roasted potatoes, an assortment of roasted or blanched vegetables, and gravy.',
    'Roast of heavily marinated meat.',
    'Peking duck is characterized by its thin, crispy skin, served with a soft rice bun.',
    'Tempura consists of seafood, meat and vegetables that have been battered and deep fried.',
    'Biryani is a mixed rice dish with meat, or eggs or vegetables such as potatoes.',
    'Nihari is a stew from the Indian subcontinent consisting of slow-cooked meat along with bone marrow.',
    'Rice with saffron, chicken, and seafood',
  ];

  List<int> prices = [25, 21, 22, 28, 29, 26, 25, 25, 25, 26];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          dishName[indexKey],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.network((dishes[indexKey]),
                  width: 200, height: 200, fit: BoxFit.cover),
            ),
            Text(
              nameKey,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  description[indexKey],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            //Text((dishName[indexKey]),),
            Text('\$' + prices[indexKey].toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: OutlinedButton(
                child: const Text('Back To Menu'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_new_app/widgets/search_bar.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({Key? key}) : super(key: key);

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  List myList = [
    'Pizza',
    'Burger',
    'Sushi',
    'MacDonalds',
    'KFC',
    'Fish',
    'Sea Food',
    'Pizza',
    'Burger',
    'Sushi',
    'MacDonalds',
    'KFC',
    'Fish',
    'Sea Food',
    'Pizza',
    'Burger',
    'Sushi',
    'MacDonalds',
    'KFC',
    'Fish',
    'Sea Food',
    'Pizza',
    'Burger',
    'Sushi',
    'MacDonalds',
    'KFC',
    'Fish',
    'Sea Food',
    'Pizza',
    'Burger',
    'Sushi',
    'MacDonalds',
    'KFC',
    'Fish',
    'Sea Food',
    'Pizza',
    'Burger',
    'Sushi',
    'MacDonalds',
    'KFC',
    'Fish',
    'Sea Food',
    'Pizza',
    'Burger',
    'Sushi',
    'MacDonalds',
    'KFC',
    'Fish',
    'Sea Food',
    'Pizza',
    'Burger',
    'Sushi',
    'MacDonalds',
    'KFC',
    'Fish',
    'Sea Food',
    'Pizza',
    'Burger',
    'Sushi',
    'MacDonalds',
    'KFC',
    'Fish',
    'Sea Food',
  ];
  final String description =
      'This is very tasty food. But sometimes you might be overeat, because its unhealty!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),
                  );
                },
                icon: const Icon(Icons.search),
              )
            ],
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            )),
            backgroundColor: Colors.deepPurple,
            title: const Text('Recepts'),
            centerTitle: true,
            floating: true,
            pinned: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, index) {
                return Card(
                  color: Colors.white30,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  margin: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Text(
                          myList[index],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Text(
                          description,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: myList.length,
            ),
          ),
        ],
      ),
    );
  }
}

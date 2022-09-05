import 'package:flutter/material.dart';
import 'package:my_new_app/screens/add_recept_screen.dart';

class YourRecipesScreen extends StatefulWidget {
  const YourRecipesScreen({Key? key}) : super(key: key);

  @override
  State<YourRecipesScreen> createState() => _YourRecipesScreenState();
}

class _YourRecipesScreenState extends State<YourRecipesScreen> {
  final List myRecepts = [
    'Cookies',
    'Fish',
    'Sea Food',
    'Fast Food',
    'Delicotes',
    'Cookies',
    'Fish',
    'Sea Food',
    'Fast Food',
    'Delicotes',
    'Cookies',
    'Fish',
    'Sea Food',
    'Fast Food',
    'Delicotes',
    'Cookies',
    'Fish',
    'Sea Food',
    'Fast Food',
    'Delicotes',
    'Cookies',
    'Fish',
    'Sea Food',
    'Fast Food',
    'Delicotes',
  ];
  final String recepts = 'For this dish you need'
      'a few bottle of water and milk for'
      ' For this dish you need'
      ' a few bottle of water and milk for';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                actions: [
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddReceptScreen()),
                      );
                    },
                    icon: const Icon(Icons.add),
                  )
                ],
                backgroundColor: Colors.deepPurple,
                title: const Text('Your Recipes'),
                centerTitle: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, index) {
                    return Column(
                      children: [
                        Card(
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
                                  myRecepts[index],
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
                                  recepts,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  childCount: myRecepts.length,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

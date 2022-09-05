import 'package:flutter/material.dart';

class AddReceptScreen extends StatefulWidget {
  const AddReceptScreen({Key? key}) : super(key: key);

  @override
  State<AddReceptScreen> createState() => _AddReceptScreenState();
}

class _AddReceptScreenState extends State<AddReceptScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final List food = [
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
  final List ratings = [
    '4.5',
    '5',
    '2.3',
    '4',
    '1',
    '4.5',
    '5',
    '2.3',
    '4',
    '1',
    '4.5',
    '5',
    '2.3',
    '4',
    '1',
    '4.5',
    '5',
    '2.3',
    '4',
    '1',
    '3.5'
  ];
  final List comments = [
    'This was good recept',
    'This is bad for my opinion',
    'Never get this!',
    'I like that!',
    'This was good recept',
    'This is bad for my opinion',
    'Never get this!',
    'I like that!',
    'This was good recept',
    'This is bad for my opinion',
    'Never get this!',
    'I like that!',
    'This was good recept',
    'This is bad for my opinion',
    'Never get this!',
    'I like that!',
    'This was good recept',
    'This is bad for my opinion',
    'Never get this!',
    'I like that!',
    'This was good recept',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Add Your Recept'),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          children: [
            const Center(
              child: Text(
                'Title of your dish recept',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.deepPurple.shade300,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: titleController,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Text(
                'Description of your dish recept',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.deepPurple.shade300,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  maxLines: 3,
                  keyboardType: TextInputType.text,
                  controller: descriptionController,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Submit your recept',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                const Icon(
                  Icons.done,
                  color: Colors.green,
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.deepPurple.shade300,
              ),
              child: ListView.builder(
                itemCount: food.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          food[index],
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 40, width: 10),
                        Text(
                          comments[index],
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 40, width: 10),
                        Text(
                          ratings[index],
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

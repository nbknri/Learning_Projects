import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar
      appBar: AppBar(
        //Text
        title: Text("Learn Flutter"),
        centerTitle: true,
        //BG Color
        backgroundColor: Colors.green,

        //Leading
        leading: Icon(Icons.home),

        //Actions
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],

        //Shape
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        ),

        //Elevation
        elevation: 20,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Sachin Tendulkar'),
                    subtitle: Text('23 minutes ago'),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://i.cdn.newsbytesapp.com/sports/players/profile/sachin-tendulkar-1.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text('Cute puppy... some text ...!'),
                  ),
                  Image.network('https://static.vecteezy.com/system/resources/previews/008/951/892/non_2x/cute-puppy-pomeranian-mixed-breed-pekingese-dog-run-on-the-grass-with-happiness-photo.jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text('MS Dhoni'),
                    subtitle: Text('10 minutes ago'),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text('Cute puppy... some text ...!'),
                  ),
                  Image.network('https://images.pexels.com/photos/5145/animal-easter-chick-chicken.jpg?cs=srgb&dl=pexels-pixabay-5145.jpg&fm=jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Virat Kohli'),
                    subtitle: Text('15 minutes ago'),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/9/9b/Virat_Kohli_in_PMO_New_Delhi.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text('Cute puppy... some text ...!'),
                  ),
                  Image.network('https://m.media-amazon.com/images/I/41QZSg8drOL._UF1000,1000_QL80_.jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

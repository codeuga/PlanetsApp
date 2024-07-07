import 'package:flutter/material.dart';
import 'package:planet_app/model.dart';

class DetailPage extends StatefulWidget {
  final PlanetInfo planetInfo;
  const DetailPage({super.key, required this.planetInfo});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _isExpandText = false;
  void toggleExpanded() {
    setState(() {
      _isExpandText = !_isExpandText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 280,
                      ),
                      Text(
                        widget.planetInfo.name,
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "Tata Surya",
                        style: TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 65, 76, 107),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        color: Colors.black12,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.planetInfo.description,
                        maxLines: _isExpandText ? null : 5,
                        overflow: _isExpandText
                            ? TextOverflow.visible
                            : TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 134, 134, 134),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: toggleExpanded,
                        child: Text(
                          _isExpandText ? "Baca lebih sedikit" : "Baca lebih lajut",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: Colors.black12,
                      )
                    ],
                  ),
                ),
                Text(
                  "     Galery",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 65, 76, 107),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                  ),
                  child: SizedBox(
                    height: 250,
                    child: ListView.builder(
                      itemCount: widget.planetInfo.images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.network(
                              widget.planetInfo.images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -50,
            child: Hero(
              tag: widget.planetInfo.id,
              child: Image.asset(
                widget.planetInfo.iconImage,
              ),
            ),
          ),
          Positioned(
            child: Text(
              widget.planetInfo.id.toString(),
              style: TextStyle(
                fontSize: 250,
                color: Color.fromARGB(255, 65, 76, 107).withOpacity(0.1),
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ],
      )),
    );
  }
}

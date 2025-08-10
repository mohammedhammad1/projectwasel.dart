import 'package:flutter/material.dart';

class Servicesoverview extends StatelessWidget {
  const Servicesoverview({super.key});

  final List<String> imageUrls = const [
    'https://deutcsh.de/wp-content/uploads/2023/09/%D9%83%D9%8A%D9%81-%D8%AA%D8%B5%D8%A8%D8%AD-%D8%B3%D8%A7%D8%A6%D9%82-%D8%B4%D8%A7%D8%AD%D9%86%D8%A9-%D9%81%D9%8A-%D8%A7%D9%84%D9%85%D8%A7%D9%86%D9%8A%D8%A7-%D8%9F.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTasLyVBcqxZh2IrI2cj_z1G_TmAmh6JJl7pbuarEArviyDYq7nUasj-akjjWd8UXcj7vA&usqp=CAU',
    'https://bizpro.techinfus.com/static/img/a/47201/466790/77694.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFaTedjZ03vOLlbC35zd504MGo3YBfukR1V57rBFS2j1252iZk5ClUlNBJJwy8GXodF7s&usqp=CAU',
    'https://cdn.al-ain.com/lg/images/2022/7/18/102-010740-turkey-tow-truck-exports_700x400.jpg',
  ];

  final List<String> secondImageUrls = const [
    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj_Mk9L0LCzqHmmuTr5dozLZkVJEOh9eFqhT2gRKirJqS9qjvAkbY7lXICA4AtJkmnVxJ8saSb-5psHcY2S6E53Cnq-kIuoc3Wv7cqWhQKDsC-dEqqeeD3yxo3u5lLi3P9JKPt3vP8NG3PNIrOpjcsBzBseyyBkoV2hEmZGeaNeIHQMnIjty7kWNr3nl9nd/s600/%D8%B4%D8%B1%D9%83%D8%A7%D8%AA%20%D8%AA%D9%88%D8%B5%D9%8A%D9%84%20%D9%81%D9%8A%20%D8%A3%D9%88%D8%B1%D9%88%D8%A8%D8%A7.jpg',
    'https://speedae.com/wp-content/uploads/2024/06/%D9%85%D9%86%D8%AF%D9%88%D8%A8-%D8%AA%D9%88%D8%B5%D9%8A%D9%84-%D8%B7%D8%B1%D9%88%D8%AF-%D9%86%D9%81%D8%B3-%D8%A7%D9%84%D9%8A%D9%88%D9%85-300x181.jpg',
    'https://www.alaraby.co.uk/sites/default/files/1234492537.jpeg',
    '',
    'https://www.uaezoom.com/wp-content/uploads/2022/04/cuorier-quote-640x360.jpg',
    'https://mybayutcdn.bayut.com/mybayut/wp-content/uploads/delivery-companiesAR01112020-1-1-1024x640-1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Services Overview'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
        backgroundColor: const Color(0xFFC7923E),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4E342E), Color(0xFF866548), Color(0xFF3F2A24)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Text(
                'An overview of our fleet working to deliver your shipments safely and efficiently.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      imageUrls.map((url) {
                        return Container(
                          margin: EdgeInsets.only(right: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              url,
                              width: 150,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ),
              SizedBox(height: 60),
              Text(
                'We are committed to delivering shipments with honesty and punctuality.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      secondImageUrls.where((url) => url.isNotEmpty).map((url) {
                        return Container(
                          margin: EdgeInsets.only(right: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              url,
                              width: 150,
                              height: 100,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 150,
                                  height: 100,
                                  color: Colors.grey,
                                  child: Icon(
                                    Icons.broken_image,
                                    color: Colors.white,
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Image.asset(
                'images/left.png',
                height: 30, // İkonun yüksekliğini ayarla
                width: 30, // İkonun genişliğini ayarla
              ),
              onPressed: () {
                // Geri butonunun işlevi
              },
            ),
            Text('Nike Air Max 270'),
            IconButton(
              icon:  Image.asset(
                'images/bag.png',
                height: 30, // İkonun yüksekliğini ayarla
                width: 30, // İkonun genişliğini ayarla
              ),
              onPressed: () {
                // Sepet butonunun işlevi
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView( // Kaydırma özelliği ekleniyor
        child: Column( // Dikey yönde widget'lar sıralanacak
          children: [
            Image.asset('images/shoe.jpeg', height: 350), // Ayakkabı resmi
             Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nike Air Max 270', style:  TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                              Text('Style: AH6789-023', style: TextStyle(fontSize: 16)),
                            ],
                      )),
                      Text('\$187.0', style:  TextStyle(fontSize: 24, color: Colors.red)),
                    ],
                  ),

                  SizedBox(height: 16),
                  Text('The Nike Air Max 270 is inspired by two icons of big Air: Air Max 180 and Air Max 93. It features Nike\'s biggest heel Air unit yet for a soft ride that feels as remarkable as it looks.', style: TextStyle(fontSize: 16)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal, // Horizontal scroll
                    child:Row(
                      children: [
                        Chip(size: 36, isSelected: false),
                        Chip(size: 37, isSelected: false),
                        Chip(size: 38, isSelected: true),  // 38 numaralı Chip seçili olarak işaretleniyor
                        Chip(size: 39, isSelected: false),
                        Chip(size: 40, isSelected: false),
                        Chip(size: 41, isSelected: false),
                        Chip(size: 42, isSelected: false),
                      ],
                    )

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Butonu merkeze al
                    children: [
                      SizedBox(
                        width: 200, // Buton genişliği
                        height: 50, // Buton yüksekliği
                        child: TextButton(
                          onPressed: () {
                            // Butona basıldığında yapılacak işlem
                            // Örneğin, sepete ekleme işlemi burada gerçekleştirilebilir
                          },
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                ],



              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Chip extends StatelessWidget {
  final int size;
  final bool isSelected; // Seçili olup olmadığını kontrol etmek için bir flag

  const Chip({Key? key, required this.size, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: isSelected ? Colors.red : Colors.white,
          onPrimary: isSelected ? Colors.white : Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: BorderSide(color: Colors.red)// Burada borderRadius ayarlanıyor
          ),// Seçili ise kırmızı, değilse gri
        ),
        onPressed: () {
          // Butona tıklandığında yapılacak işlemler
        },
        child: Text(
          size.toString(),
          style: TextStyle(fontSize: 15) ,
        ),
      ),
    );
  }
}

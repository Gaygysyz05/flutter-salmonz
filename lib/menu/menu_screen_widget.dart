import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPage(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle:  GoogleFonts.inter(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.0,
          ),
          unselectedLabelStyle:  GoogleFonts.inter(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.0,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: 'ORDER',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'CART',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'PROFILE',
            ),
          ]),
    );
  }
}

Widget _getPage(int index) {
  switch (index) {
    case 0:
      return FistMainPage();
    case 1:
      return Scaffold(body: Text('Order Screen'));
    case 2:
      return Scaffold(body: Text('Cart Screen'));
    case 3:
      return Scaffold(body: Text('Profile Screen'));
    default:
      return FistMainPage();
  }
}

class FistMainPage extends StatefulWidget {
  const FistMainPage({super.key});

  @override
  State<FistMainPage> createState() => _FistMainPageState();
}

class _FistMainPageState extends State<FistMainPage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'images/salmonz_logo.png',
              width: 80,
              height: 62,
            ),
            Text(
              'Salmonz',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 20),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.1,
                children: [
                  _MenuGridWidget(
                    category: 'Rolls',
                    imagePath: 'images/rolls.png',
                    isSelected: selectedIndex == 0,
                    onTap: () {
                      setState(() {
                        selectedIndex = selectedIndex == 0 ? -1 : 0;
                      });
                    },
                  ),
                  _MenuGridWidget(
                    category: 'Sushi',
                    imagePath: 'images/sushi.png',
                    isSelected: selectedIndex == 1,
                    onTap: () {
                      setState(() {
                        selectedIndex = selectedIndex == 1 ? -1 : 1;
                      });
                    },
                  ),
                  _MenuGridWidget(
                    category: 'Sets',
                    imagePath: 'images/sets.png',
                    isSelected: selectedIndex == 2,
                    onTap: () {
                      setState(() {
                        selectedIndex = selectedIndex == 2 ? -1 : 2;
                      });
                    },
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

class _MenuGridWidget extends StatelessWidget {
  final String category;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  const _MenuGridWidget({
    super.key,
    required this.category,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.deepOrange : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20),
              child: Text(
                category,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : Colors.black,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

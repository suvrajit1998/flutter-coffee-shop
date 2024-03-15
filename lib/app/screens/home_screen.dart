import 'package:coffe_shop/app/exports.dart';
import 'package:coffe_shop/app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-page';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.sort_rounded,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "It's a great day for coffee",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            width: double.infinity,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 50, 54, 56),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Find your coffee',
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
          ),
          TabBar(
            controller: _tabController,
            dividerColor: Color(0XFF212325),
            labelColor: Color(0xFFE57734),
            unselectedLabelColor: Colors.white.withOpacity(0.5),
            isScrollable: true,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 3,
                color: Color(0xFFE57734),
              ),
              // insets: EdgeInsets.symmetric(horizontal: 0),
            ),
            labelStyle: TextStyle(fontSize: 20),
            labelPadding: EdgeInsets.symmetric(horizontal: 20),
            tabs: [
              Tab(text: 'Hot Coffee'),
              Tab(text: 'Cold Coffee'),
              Tab(text: 'Cappuccino'),
              Tab(text: 'Anericano'),
            ],
          ),
          SizedBox(height: 10),
          Center(
            child: [
              ItemsWidgets(),
              ItemsWidgets(),
              ItemsWidgets(),
              ItemsWidgets(),
            ][_tabController.index],
          ),
        ]),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}

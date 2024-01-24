import '../utils/imports.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black87,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          hintText: 'Search',
                          //hintStyle: TextStyle(),
                          filled: true,
                          fillColor: Colors.grey[600],
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 4.0,
                      //left: 0.0,
                      /*right: 0.0*/
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Colors.transparent,
                        child: Image.asset('assets/images/1.jpg',
                            fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/2.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/3.jpg',
                              fit: BoxFit.cover)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Colors.transparent,
                        child: Image.asset('assets/images/4.jpg',
                            fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/5.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/6.jpg',
                              fit: BoxFit.cover)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Colors.transparent,
                        child: Image.asset('assets/images/7.jpg',
                            fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/8.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/9.jpg',
                              fit: BoxFit.cover)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Colors.transparent,
                        child: Image.asset('assets/images/10.jpg',
                            fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/11.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/12.jpg',
                              fit: BoxFit.cover)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Colors.transparent,
                        child: Image.asset('assets/images/13.jpg',
                            fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/14.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/15.jpg',
                              fit: BoxFit.cover)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Colors.transparent,
                        child: Image.asset('assets/images/16.jpg',
                            fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/17.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/18.jpg',
                              fit: BoxFit.cover)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Colors.transparent,
                        child: Image.asset('assets/images/19.jpg',
                            fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/20.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/21.jpg',
                              fit: BoxFit.cover)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Colors.transparent,
                        child: Image.asset('assets/images/22.jpg',
                            fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/23.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/24.jpg',
                              fit: BoxFit.cover)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Colors.transparent,
                        child: Image.asset('assets/images/25.jpg',
                            fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/26.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/27.jpg',
                              fit: BoxFit.cover)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Colors.transparent,
                        child: Image.asset('assets/images/28.jpg',
                            fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/29.jpg',
                              fit: BoxFit.cover)),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.transparent,
                          child: Image.asset('assets/images/30.jpg',
                              fit: BoxFit.cover)),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    color: Colors.transparent,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

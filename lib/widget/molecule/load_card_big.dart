part of 'molecule.dart';

class LoadCardBig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Container(
                margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Column(
                    children: [
                      Container(
                        width: 320,
                        height: 170,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                new BorderRadius.all(Radius.circular(25))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 220,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 200,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: new BorderRadius.all(
                                          Radius.circular(8))),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 100,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: new BorderRadius.all(
                                          Radius.circular(8))),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    new BorderRadius.all(Radius.circular(8))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}

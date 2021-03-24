part of 'molecule.dart';

class LoadCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: Container(
        height: double.maxFinite,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Row(
                children: [
                  Container(
                    width: 100,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius:
                            new BorderRadius.all(Radius.circular(15))),
                  ),
                  SizedBox(
                    width: 20,
                  ),
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
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(8))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 100,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(8))),
                        ),
                        SizedBox(
                          height: 30,
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
                    ),
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

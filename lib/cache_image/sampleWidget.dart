import 'package:flutter/material.dart';

class SampleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleWidgetState();
}

class Imagess {
  String url;
  Imagess(this.url);
}

class _SampleWidgetState extends State<SampleWidget> {
  Image image1 = Image.network(
    "https://dotobjyajpegd.cloudfront.net/photo/5cd93e82a449d212f37e1862_m",
  );
  Image image2 = Image.network(
    "https://lh3.googleusercontent.com/proxy/AOZcs27fimOm2AEFHwCabW6l7DjG1CSVc_eRbDkrabweEsFEH7osvb0eVLTPGnQ2ll5NE7dyH3Fo5QXcP_S6B_BBkvTPq3vIDlfyflMdfniBa2rS3TrN6miADIdKjjRVqTbchktU2ybIAKEMOYfBTzciAnJD",
  );
  Image image3 = Image.network(
    "https://i.pinimg.com/736x/75/c3/22/75c3227a66dd651ca776b49b804e9f2e.jpg",
  );
  Image image4 = Image.network(
    "https://s.tinnhanh.ai/uploads/editors/2020/04/05/dan-hot-girl-tren-tik-tok-viet-nam-khong-dieu-hay-lam-lo-xinh-trong-treo-the-nay-moi-co-nhieu-followers1-5e89eb0c54902.jpg",
  );
  List<Image> _list;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(image1.image, context);
    precacheImage(image2.image, context);
    precacheImage(image3.image, context);
    precacheImage(image4.image, context);
    _list = [image1, image2, image3, image4];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              _list.length,
              (index) {
                return _list[index];
              },
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BagSliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {

  double statusHeight;

  BagSliverPersistentHeaderDelegate(this.statusHeight);

  EdgeInsets kPaddingStandard = EdgeInsets.fromLTRB(16, 12, 16, 12);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SafeArea(
      child: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon:  Icon(
                    Icons.search,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  onPressed: (){},)
            ),
            Positioned.fill(
              child: Container(
                  padding: kPaddingStandard,
                  alignment: Alignment.bottomLeft,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text('My Bag', style: Theme.of(context).textTheme.display1.copyWith(
                        color: Colors.black
                    ),),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 144 +  statusHeight;

  @override
  double get minExtent => 48 +  statusHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
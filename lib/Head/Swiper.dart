import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:omegaalfav1/JsonParse.dart';

import 'ControllerHeader.dart';

Widget HeadSwiper(BuildContext context, User user){
  return Swiper(
    itemBuilder: (BuildContext context,int index){
      return ControllerHeader(index, user, context);
    },
    itemCount: 2,
    pagination: new SwiperPagination(),
    control: new SwiperControl(),
  );




}
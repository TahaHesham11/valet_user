import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valet_user/core/constants/color.dart';
import 'package:valet_user/features/prsentaion/widgets/my_text.dart';

class DefaultAppBar extends StatefulWidget {
  final String text;

  final bool isShow;
  final bool isSpace;
  final bool isSpaceStart;

  DefaultAppBar(
      {super.key,
      required this.text,
      this.isShow = true,
      this.isSpace = false,
      this.isSpaceStart = false
      });

  @override
  State<DefaultAppBar> createState() => _DefaultAppBarState();
}

class _DefaultAppBarState extends State<DefaultAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 139.h,
      margin: EdgeInsetsDirectional.only(bottom: 20.r),
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.r),
            bottomRight: Radius.circular(40.r)),
      ),
      child: Row(
        children: [
          widget.isShow
              ? IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ))
              : Container(),
          widget.isSpace
              ? Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: MyText(
                      text: widget.text,
                      color: Colors.white,
                    ),
                  ),
                )
              : Padding(
 padding: widget.isSpaceStart ? EdgeInsetsDirectional.only(start: 80.r) : EdgeInsetsDirectional.only(start: 100.r),
                child: MyText(
                            text: widget.text,
                            color: Colors.white,
                          ),
              ),
        ],
      ),
    );
  }
}

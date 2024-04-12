import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/core/utils/custom_extension.dart';
import 'package:gyansanchar/core/utils/image_constant.dart';
import 'package:gyansanchar/presentation/resources/colors.dart';
import 'package:gyansanchar/presentation/widgets/custom_image_view.dart';
import 'package:velocity_x/velocity_x.dart';


class WelcomeImage extends StatelessWidget {
  final String heading;
  final String body;

  const WelcomeImage({
    Key? key,
    required this.heading,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      [
        [
          Image.asset(ImageConstant.imgLinearGredientBgStrip),
          Image.asset(ImageConstant.imgTeachingIllustration),
        ].zStack(alignment: Alignment.center),
        CustomImageView(
                    // svgPath: ImageConstant.icBars,
                    // height: 16.h,
                    // width: 16.w,
                  ),
       // const CustomIcon(icBars)
      ]
          .zStack(alignment: Alignment.centerRight)
          .hPCT(context: context, heightPCT: 43),
      SmallBox(heading: heading, body: body).positioned(
        bottom: Vx.dp32,
        left: Vx.dp48,
      )
    ].zStack(alignment: Alignment.bottomLeft);
  }
}

class SmallBox extends StatelessWidget {
  final String heading;
  final String body;
  const SmallBox({
    Key? key,
    required this.heading,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      CustomImageView(
                    // svgPath: ImageConstant.icCalender,
                    height: 16.h,
                    width: 16.w,
                    color: Colors.white,
                  )
    
          .p4()
          .p2()
          .box
          .color(h23BDEE)
          .customRounded(BorderRadius.circular(Vx.dp5))
          .make()
          .p8(),
      [
        heading.text.sm.color(h595959).semiBold.nunitoSans.make(),
        body.text.xs.color(h545567).nunitoSans.make(),
      ]
          .vStack(
              crossAlignment: CrossAxisAlignment.start,
              axisSize: MainAxisSize.min)
          .pOnly(right: 32)
    ]
        .hStack(axisSize: MainAxisSize.min)
        .box
        .roundedSM
        .color(Colors.white.withOpacity(0.8))
        .make();
  }
}

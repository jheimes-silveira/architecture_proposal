import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DuckNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final double? height;
  final double? width;
  final Color? color;
  final Widget? errorWidget;
  final Widget? progressWidget;
  final BoxFit boxfit;
  final bool? circular;
  final Alignment? alignment;
  final BorderRadiusGeometry? borderRadius;
  final Key? key;

  const DuckNetworkImage({
    this.imageUrl,
    this.height,
    this.width,
    this.color,
    this.errorWidget,
    this.boxfit = BoxFit.cover,
    this.alignment,
    this.circular,
    this.borderRadius,
    this.progressWidget,
    this.key,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      key: key,
      imageUrl: imageUrl ?? '',
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          shape: circular == null
              ? BoxShape.rectangle
              : BoxShape.circle,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          progressWidget ??
          SpinKitCircle(
            color: Theme.of(context).disabledColor,
            size: 30,
          ),
      errorWidget: (context, url, error) =>
          errorWidget ??
          Container(
            decoration: BoxDecoration(
              color: Color(0xffD3D3D3),
              shape: circular == null
                  ? BoxShape.rectangle
                  : BoxShape.circle,
            ),
            alignment: Alignment.center,
          ),
      height: height,
      width: width,
      fit: boxfit,
      color: color,
      alignment: alignment ?? Alignment.center,
      fadeInDuration: Duration(milliseconds: 500),
      fadeOutDuration: Duration(milliseconds: 1000),
      placeholderFadeInDuration: Duration(milliseconds: 1000),
    );
  }
}

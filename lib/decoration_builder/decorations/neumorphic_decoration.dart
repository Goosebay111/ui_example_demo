import 'package:bmad_ui_example/neumorphic_objects/attributes/image_attributes.dart';
import '../decoration_builder.dart';

class ImageDecoration extends DecorationBuilder {
  ImageDecoration()
      : super(
          borderEffect: ImageBorderEffect(),
          surfaceEffect: ImageSurfaceEffect(),
          shadowEffect: ImageShadowEffect(),
        );
}

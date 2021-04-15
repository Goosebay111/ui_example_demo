import 'package:bmad_ui_example/neumorphic_objects/object_attributes/image_attributes.dart';
import 'package:bmad_ui_example/ui_effects/objectProperties.dart';

class ImageEffect extends Effect {
  ImageEffect()
      : super(
          shapeEffect: ImageAttributes(),
          surfaceEffect: ImageSurfaceEffect(),
          shadowEffect: ImageShadowEffect(),
        );
}

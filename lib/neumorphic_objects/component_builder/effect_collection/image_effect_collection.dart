import 'package:bmad_ui_example/neumorphic_objects/component_attributes/image_attributes.dart';
import 'package:bmad_ui_example/ui_properties/objectProperties.dart';

class ImageEffectCollection extends EffectCollection {
  ImageEffectCollection()
      : super(
          shapeEffect: ImageAttributes(),
          surfaceEffect: ImageSurfaceEffect(),
          shadowEffect: ImageShadowEffect(),
        );
}

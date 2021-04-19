import 'package:bmad_ui_example/neumorphic_objects/component_attributes/scrubber_thumb_attributes.dart';
import 'package:bmad_ui_example/neumorphic_objects/component_builder/component_builder.dart';
import 'package:bmad_ui_example/ui_effects/effect_Collection.dart';

class MusicThumb extends ComponentBuilder {
  MusicThumb()
      : super(
          isThumb: true,
          decorations: EffectCollection(
            shapeEffect: ThumbAttributes(),
            surfaceEffect: ThumbSurfaceEffect(),
            shadowEffect: ThumbShadowEffect(),
          ),
        );
}

import 'package:bmad_ui_example/neumorphic_objects/component_attributes/scrubber_thumb_attributes.dart';
import 'package:bmad_ui_example/neumorphic_objects/component_builder/component_builder.dart';

class MusicThumb extends ComponentBuilder {
  MusicThumb()
      : super(
          isThumb: true,
          decorations: ThumbEffectCollection(),
        );
}

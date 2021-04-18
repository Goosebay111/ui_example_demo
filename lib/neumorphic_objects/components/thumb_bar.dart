import 'package:bmad_ui_example/neumorphic_objects/component_builder/component_builder.dart';
import 'package:bmad_ui_example/neumorphic_objects/object_attributes/scrubber_thumb_attributes.dart';

class MusicThumb extends ComponentBuilder {
  MusicThumb()
      : super(
          isThumb: true,
          effect: ThumbEffect(),
        );
}

import '../../../../../core.dart';
import '../../../domain/entities/water_type_entity.dart';
import '../../bloc/water_type_bloc.dart';
import '../../bloc/water_type_event.dart';
import '../../bloc/water_type_state.dart';
import 'water_type_options.dart';

class WaterTypeContent extends StatelessWidget {
  const WaterTypeContent({
    super.key,
    required this.selected,
    required this.onSelected,
  });

  final String? selected;
  final ValueChanged<WaterTypeEntity> onSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WaterTypeBloc, WaterTypeState>(
      builder: (context, state) {
        return switch (state) {
          WaterTypeInitial() || WaterTypeLoading() => const AppLoadingWidget(),
          WaterTypeFailure(:final message) => AppFailureWidget(
            message: message,
            onRetry: () => context.read<WaterTypeBloc>().add(
              const WaterTypeEvent.started(),
            ),
          ),
          WaterTypeSuccess(:final waterTypes) => WaterTypeOptions(
            options: waterTypes,
            selected: selected,
            onSelected: onSelected,
          ),
        };
      },
    );
  }
}

import '../../../core.dart';

class AppLogoMark extends StatelessWidget {
  const AppLogoMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBox(
        decoration: const BoxDecoration(color: Color(0xFFDDEAF8), shape: BoxShape.circle),
        child: SizedBox(
          width: 90,
          height: 90,
          child: Center(
            child: Transform.rotate(
              angle: 0.785398,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF0967D7), Color(0xFF5BA9FF)],
                  ),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: SizedBox(
                  width: 55,
                  height: 55,
                  child: Transform.rotate(angle: -0.785398, child: const Icon(Icons.water_drop_outlined, color: Colors.white, size: 32)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

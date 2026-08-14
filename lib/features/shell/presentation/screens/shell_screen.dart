import '../../../../core.dart';
import '../widgets/app_bottom_navigation_bar.dart';

class ShellScreen extends StatelessWidget {
  const ShellScreen({
    super.key,
    required this.navigationShell,
    required this.isAtBranchRoot,
  });

  final StatefulNavigationShell navigationShell;
  final bool isAtBranchRoot;

  void _onDestinationSelected(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope<void>(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;
        if (!isAtBranchRoot) {
          context.pop();
        } else if (navigationShell.currentIndex != 0) {
          navigationShell.goBranch(0, initialLocation: true);
        } else {
          _confirmExit(context);
        }
      },
      child: AppScaffold(
        padding: EdgeInsets.zero,
        body: navigationShell,
        bottomNavigationBar: AppBottomNavigationBar(
          currentIndex: navigationShell.currentIndex,
          onDestinationSelected: _onDestinationSelected,
        ),
      ),
    );
  }

  Future<void> _confirmExit(BuildContext context) async {
    final shouldExit = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Exit app?'),
        content: const Text('Do you want to close the app?'),
        actions: [
          TextButton(
            onPressed: () => dialogContext.pop(false),
            child: const Text('No'),
          ),
          FilledButton(
            onPressed: () => dialogContext.pop(true),
            child: const Text('Yes'),
          ),
        ],
      ),
    );
    if (shouldExit == true) {
      await SystemNavigator.pop();
    }
  }
}

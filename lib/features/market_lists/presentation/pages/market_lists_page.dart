import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/router/router_module.dart';
import '../../../../core/utils/theme_extension.dart';
import '../../domain/entities/market_list.dart';
import '../providers/market_list_provider.dart';
import '../providers/market_list_state.dart';

class MarketListsPage extends StatelessWidget {
  const MarketListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MarketListProvider>();
    final state = provider.state;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Market Lists',
          style: context.text.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colors.onSurface,
          ),
        ),
      ),
      body: state.when(
        initial: () => const SizedBox.shrink(),
        loading: () => Center(child: const CircularProgressIndicator()),
        empty: () => _buildEmptyState(context),
        success: (list) => _buildListView(context, list, provider),
        error: (message) => _buildErrorState(context, message, provider),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showCreateListBottomSheet(context, provider);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildErrorState(
    BuildContext context,
    String message,
    MarketListProvider provider,
  ) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 60, color: context.colors.error),
          const SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(color: context.colors.error),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: provider.loadLists,
            child: const Text('Try Again'),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_cart_outlined,
            size: 80,
            color: context.colors.outline,
          ),
          const SizedBox(height: 16),
          Text(
            'No market lists yet',
            style: context.text.bodyLarge?.copyWith(
              color: context.colors.onSurface,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListView(
    BuildContext context,
    List<MarketList> lists,
    MarketListProvider provider,
  ) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: lists.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final list = lists[index];
        return _buildListCard(context, list, provider);
      },
    );
  }

  Widget _buildListCard(
    BuildContext context,
    MarketList list,
    MarketListProvider provider,
  ) {
    final progress = list.totalItems == 0
        ? 0.0
        : list.completedItems / list.totalItems;

    return Dismissible(
      key: Key(list.id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 24),
        decoration: BoxDecoration(
          color: context.colors.error,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          Icons.delete_outline,
          color: context.colors.onError,
          size: 28,
        ),
      ),
      onDismissed: (direction) {
        provider.deleteList(list.id);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('The list "${list.name}" was deleted'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () async {
          await context.push(AppRoute.details.path, extra: list.id);
          provider.loadLists();
        },
        child: Ink(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: context.colors.surfaceContainer,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: context.colors.outlineVariant.withValues(alpha: .2),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                list.name,
                style: context.text.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colors.onSurface,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${list.completedItems}/${list.totalItems} itens',
                    style: context.text.bodyMedium?.copyWith(
                      color: context.colors.onSurfaceVariant,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: LinearProgressIndicator(
                      value: progress,
                      backgroundColor: context.colors.surfaceContainerHighest,
                      color: context.colors.primary,
                      borderRadius: BorderRadius.circular(8),
                      minHeight: 6,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCreateListBottomSheet(
    BuildContext context,
    MarketListProvider provider,
  ) {
    final controller = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: context.colors.surfaceContainerHigh,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (bottomSheetContext) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(bottomSheetContext).viewInsets.bottom + 24,
            left: 24,
            right: 24,
            top: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 24),
                  decoration: BoxDecoration(
                    color: context.colors.outlineVariant,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Text(
                'New List',
                style: context.text.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colors.onSurface,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              TextField(
                controller: controller,
                autofocus: true,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  hintText: 'Sunday BBQ',
                  hintStyle: TextStyle(color: context.colors.onSurfaceVariant),
                  filled: true,
                  fillColor: context.colors.surface,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: context.colors.primary),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: context.colors.primary,
                  foregroundColor: context.colors.onPrimary,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  final name = controller.text.trim();
                  if (name.isNotEmpty) {
                    provider.createList(name);
                    Navigator.pop(bottomSheetContext);
                  }
                },
                child: const Text(
                  'Create List',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

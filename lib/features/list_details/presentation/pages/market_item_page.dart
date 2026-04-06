import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/theme_extension.dart';
import '../../domain/entities/market_item.dart';
import '../providers/market_item_provider.dart';
import '../providers/market_item_state.dart';

class MarketItemPage extends StatelessWidget {
  final String listId;

  const MarketItemPage({super.key, required this.listId});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MarketItemProvider>();
    final state = provider.state;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Market Items',
          style: context.text.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colors.onSurface,
          ),
        ),
      ),
      body: state.when(
        loading: () => Center(child: const CircularProgressIndicator()),
        empty: () => _buildEmptyState(context),
        success: (items) => _buildListView(context, items, provider),
        error: (message) => _buildErrorState(context, message, provider),
        initial: () => _buildEmptyState(context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddItemBottomSheet(context, provider),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildErrorState(
    BuildContext context,
    String message,
    MarketItemProvider provider,
  ) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 60, color: context.colors.error),
          const SizedBox(height: 16),
          Text(message, style: TextStyle(color: context.colors.error)),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => provider.loadItems(listId),
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
            Icons.remove_shopping_cart_outlined,
            size: 80,
            color: context.colors.outline,
          ),
          const SizedBox(height: 16),
          Text(
            'No items in this list yet',
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
    List<MarketItem> items,
    MarketItemProvider provider,
  ) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final item = items[index];

        return _buildItemCard(context, item, provider);
      },
    );
  }

  Widget _buildItemCard(
    BuildContext context,
    MarketItem item,
    MarketItemProvider provider,
  ) {
    return Dismissible(
      key: Key(item.id),
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
      onDismissed: (_) {
        provider.deleteItem(item.id);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${item.name} removed'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => provider.toggleItem(item.id),
        child: Ink(
          decoration: BoxDecoration(
            color: item.isBought
                ? context.colors.surfaceContainerHighest.withValues(alpha: .5)
                : context.colors.surfaceContainer,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: context.colors.outlineVariant.withValues(alpha: .2),
            ),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 4,
            ),
            leading: Checkbox(
              value: item.isBought,
              activeColor: context.colors.primary,
              onChanged: (_) => provider.toggleItem(item.id),
            ),
            title: Text(
              item.name,
              style: context.text.titleMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: item.isBought
                    ? context.colors.onSurfaceVariant
                    : context.colors.onSurface,
                decoration: item.isBought ? TextDecoration.lineThrough : null,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showAddItemBottomSheet(
    BuildContext context,
    MarketItemProvider provider,
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
              Text(
                'New Item',
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
                  hintText: 'Milk, Eggs, etc...',
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
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  final name = controller.text.trim();
                  if (name.isNotEmpty) {
                    provider.addItem(name);
                    Navigator.pop(bottomSheetContext);
                  }
                },
                child: const Text(
                  'Add Item',
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

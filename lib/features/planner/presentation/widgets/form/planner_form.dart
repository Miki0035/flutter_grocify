import 'package:flutter/material.dart';
import 'package:grocify/core/constants/sizes.dart';
import 'package:grocify/features/planner/presentation/models/category_option_item.dart';
import 'package:grocify/features/planner/presentation/widgets/form/text_form_field.dart';

class GPlanForm extends StatefulWidget {
  const GPlanForm({super.key});

  @override
  State<GPlanForm> createState() => _GPlanFormState();
}

class _GPlanFormState extends State<GPlanForm> {
  final formKey = GlobalKey<FormState>();
  final itemNameController = TextEditingController();
  final quantityController = TextEditingController();

  static const List<CategoryOptionItem> categories = [
    CategoryOptionItem(
      value: 'Produce',
      icon: Icons.eco_outlined,
      selectedIcon: Icons.eco_rounded,
    ),
    CategoryOptionItem(
      value: 'Dairy',
      icon: Icons.icecream_outlined,
      selectedIcon: Icons.icecream_rounded,
    ),
    CategoryOptionItem(
      value: 'Bakery',
      icon: Icons.breakfast_dining_outlined,
      selectedIcon: Icons.breakfast_dining_rounded,
    ),
    CategoryOptionItem(
      value: 'Pantry',
      icon: Icons.kitchen_outlined,
      selectedIcon: Icons.kitchen,
    ),
    CategoryOptionItem(
      value: 'Snacks',
      icon: Icons.cookie_outlined,
      selectedIcon: Icons.cookie_rounded,
    ),
  ];

  static const List<CategoryOptionItem> priorities = [
    CategoryOptionItem(
      value: 'Low',
      icon: Icons.low_priority_outlined,
      selectedIcon: Icons.low_priority_rounded,
    ),
    CategoryOptionItem(
      value: 'Medium',
      icon: Icons.drag_handle_outlined,
      selectedIcon: Icons.drag_handle_rounded,
    ),
    CategoryOptionItem(
      value: 'High',
      icon: Icons.priority_high_outlined,
      selectedIcon: Icons.priority_high_rounded,
    ),
  ];

  CategoryOptionItem selectedCategory = categories[0];
  CategoryOptionItem selectedPriority = priorities[0];

  @override
  void dispose() {
    itemNameController.dispose();
    quantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Width Of Device
    final width = MediaQuery.sizeOf(context).width;

    // SCREEN COLORS
    final backgroundColor = Theme.of(context).colorScheme.surface;
    final borderColor = Theme.of(context).colorScheme.outlineVariant;
    // CHIP BG COLOR
    final selectedChipBgColor = Theme.of(context).colorScheme.primary;
    final defaultChipBgColor = Theme.of(
      context,
    ).colorScheme.outlineVariant.withValues(alpha: 0.6);
    // CHIP TEXT COLOR
    final selectedTextColor = Theme.of(context).colorScheme.onPrimary;
    final defaultTextColor = Theme.of(
      context,
    ).colorScheme.primary.withValues(alpha: 0.7);

    // CHIP ICON COLOR
    final defaultIconColor = Theme.of(
      context,
    ).colorScheme.onSurface.withValues(alpha: 0.5);
    final selectedIconColor = Theme.of(context).colorScheme.onPrimary;

    return Form(
      key: formKey,
      child: Container(
        padding: .symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: .all(color: borderColor, width: 2),
          borderRadius: .circular(18),
        ),
        child: Column(
          children: [
            // ITEM NAME
            GTextFormField(
              controller: itemNameController,
              labelText: 'Item name',
              hintText: 'Ex: Blueberries',
              prefixIcon: Icons.shopping_bag,
            ),
            // QUANTITY
            GTextFormField(
              controller: quantityController,
              labelText: 'Quantity',
              hintText: '1',
              prefixIcon: Icons.numbers_outlined,
            ),

            // CATEGORY
            Padding(
              padding: .symmetric(vertical: 12),
              child: SizedBox(
                width: .infinity,
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                        fontWeight: .w700,
                        fontSize: GSize.fontSm,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Wrap(
                      spacing: 7,
                      runSpacing: 7,
                      children: categories.map((item) {
                        final selected = selectedCategory.value == item.value;
                        final icon = selected ? item.selectedIcon : item.icon;
                        final chipBg = selected
                            ? selectedChipBgColor
                            : defaultChipBgColor;

                        final iconColor = selected
                            ? selectedIconColor
                            : defaultIconColor;

                        final textColor = selected
                            ? selectedTextColor
                            : defaultTextColor;

                        final option = item.value;

                        return ChoiceChip(
                          backgroundColor: defaultChipBgColor,
                          selectedColor: chipBg,
                          side: .none,
                          shape: RoundedRectangleBorder(
                            borderRadius: .circular(20),
                          ),

                          onSelected: (value) {
                            setState(() {
                              selectedCategory = item;
                            });
                          },

                          label: Row(
                            mainAxisSize: .min,
                            children: [
                              Icon(icon, color: iconColor),
                              SizedBox(width: 4),
                              Text(
                                option,
                                style: TextStyle(
                                  color: textColor,
                                  fontWeight: .w600,
                                ),
                              ),
                            ],
                          ),
                          selected: selected,
                          showCheckmark: false,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),

            // PRIORITY
            Padding(
              padding: .symmetric(vertical: 12),
              child: SizedBox(
                width: .infinity,
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'Priority',
                      style: TextStyle(
                        fontWeight: .w700,
                        fontSize: GSize.fontSm,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Wrap(
                      spacing: 7,
                      runSpacing: 7,
                      children: priorities.map((item) {
                        final selected = selectedPriority.value == item.value;
                        final icon = selected ? item.selectedIcon : item.icon;
                        final chipBg = selected
                            ? selectedChipBgColor
                            : defaultChipBgColor;

                        final iconColor = selected
                            ? selectedIconColor
                            : defaultIconColor;

                        final textColor = selected
                            ? selectedTextColor
                            : defaultTextColor;

                        final option = item.value;

                        return ChoiceChip(
                          backgroundColor: defaultChipBgColor,
                          selectedColor: chipBg,
                          side: .none,
                          shape: RoundedRectangleBorder(
                            borderRadius: .circular(20),
                          ),

                          onSelected: (value) {
                            setState(() {
                              selectedPriority = item;
                            });
                          },

                          label: Row(
                            mainAxisSize: .min,
                            children: [
                              Icon(icon, color: iconColor),
                              SizedBox(width: 4),
                              Text(
                                option,
                                style: TextStyle(
                                  color: textColor,
                                  fontWeight: .w600,
                                ),
                              ),
                            ],
                          ),
                          selected: selected,
                          showCheckmark: false,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: width * 0.8,
              padding: .symmetric(vertical: 24),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedChipBgColor,
                  padding: .symmetric(vertical: 22),
                  shape: RoundedRectangleBorder(borderRadius: .circular(8)),
                ),
                child: Text(
                  'Create',
                  style: TextStyle(
                    color: selectedTextColor,
                    fontWeight: .w600,
                    fontSize: GSize.fontMd,
                    letterSpacing: 0.9,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

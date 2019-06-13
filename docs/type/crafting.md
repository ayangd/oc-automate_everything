# Crafting
A crafting recipe type definition.

## Fields in an instance
- `crafting.dimension`
  The smallest possible dimension of a crafting recipe.
  - `crafting.dimension.width`
  - `crafting.dimension.height`
- `crafting.pattern` is a item-type table field.
  Pattern for a recipe. They contains item-type or nil for empty spot.
  The indexing:
  |1|2|3|
  |-|-|-|
  |4|5|6|
  |7|8|9|
  or
  |1|2|
  |-|-|
  |3|4|
  |5|6|
  depends on the dimension.
- `crafting.shaped` is a boolean field.
  Determines the crafting has shape or not.
- `crafting.result` is an item-type field.
  The result of a crafting, with the amount.

## Functions

### Abstract function
Doesn't need to instantiate one. It's already available.
- `crafting.new(dimension, pattern, shaped, result)`
  Instantiates a new crafting recipe. All arguments are for filling all the fields and all are needed.

### Object function
Does things to the referenced instance.
- `crafting:itemsNeeded()`
  Calculates what are needed to satisfy the current crafting.
  To calculate raw materials, see [resproc](../resproc.md)
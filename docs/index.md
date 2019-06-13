# Documentation Index (WIP)
>Note: This is a documentation for OOP'd floppy. (newfloppy)

>All things that are important to the project, are all referenced here. Others are unused.

This index will guide you through the libraries.

## Types
Since this project is OOP (although some people argue that OOP sucks), types are essential to prevent crude-type ambiguity (how they're supposed to be formatted as, compared to the other similar type, plus code readability).
- [crafting](type/crafting.md)
- [item](type/item.md)
- [itemarray](type/itemarray.md)
- Others are to be implemented.

## Libraries
All of the relevant functions are categorized and put into one library file, according to its names. No mess must be here.

### Database libraries
These are libraries that handles resource databases.
- [rawdb](craftingdb.md) - to prevent crafting loop, eg: Iron Block <=> Iron Ingot
- [craftingdb](craftingdb.md)
- Others are to be implemented.

They are mostly used in [resproc](resproc.md) - Resource Processor, for resource calculation.

### Utility libraries
Just for ease in handling data.
- [stringlib](stringlib.md)
- [tablelib](tablelib.md)

### Real libraries
Really. They're straightforward. They contains what is useful for the project.
- [resproc](resproc.md)
- [inventory](inventory.md)

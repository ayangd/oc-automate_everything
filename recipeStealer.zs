import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.recipes.ICraftingRecipe;

print("============================================================================");
print("    Stealing recipes...");
print("============================================================================");
for entry in oreDict {
	var prbuf = entry.commandString ~ "=";
	for item in entry.items {
		prbuf ~= item.commandString ~ "|";
	}
	print("=[ore]=>" ~ prbuf.substring(0, prbuf.length - 1) ~ ";");
}

for crafting in recipes.all {
	print("=[crafting]=>" ~ crafting.commandString);
}
print("============================================================================");
print("    Stolen!");
print("============================================================================");

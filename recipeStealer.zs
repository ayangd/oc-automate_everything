import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;

print("Stealing recipes...");
for entry in oreDict {
	var prbuf = entry.name ~ "=";
	for item in entry.items {
		prbuf ~= item.name ~ "|";
	}
	print("=[ore]=>" ~ prbuf.substring(0, prbuf.length - 1));
}

for crafting in recipes.all {
	var prbuf = crafting.output.name ~ " " ~ crafting.output.amount ~ " ";
	if (crafting.shaped) {
		prbuf ~= "sd ";
		val height = crafting.ingredients2D.length;
		val width = crafting.ingredients2D[0].length;
		prbuf ~= width ~ height ~ " ";
		var neededItems = [] as IIngredient[];
		for (y in crafting.ingredients2D) {
			for (x in y) {
				if (!(neededItems has x)) {
					neededItems += x;
				}
			}
		}
		for (y in 0 to height - 1) {
			for (x in 0 to width - 1) {
				if crafting.ingredients2D[y][x] != null {
					for ni in 0 to neededItems.length - 1 {
						if crafting.ingredients2D[y][x] == neededItems[ni] {
							prbuf ~= ni
						}
					}
				} else {
					prbuf ~= "0";
				}
			}
		}
		for item in neededItems {
			prbuf ~= ((item instanceof IOreDictEntry) ? "ore:" : "") ~ item.name;
		}
	} else {
		prbuf ~= "sl 00 ";
		var neededItems = [] as IIngredient[];
		for i in crafting.ingredients1D {
			if (!(neededItems has i)) {
				neededItems += i;
			}
		}
		for i in 0 to crafting.ingredients1D.length - 1 {
			if crafting.ingredients1D[i] != null {
				for ni in 0 to neededItems.length - 1 {
					if crafting.ingredients1D[i] == neededItems[ni] {
						prbuf ~= ni
					}
				}
			} else {
				prbuf ~= "0";
			}
		}
		for item in neededItems {
			prbuf ~= ((item instanceof IOreDictEntry) ? "ore:" : "") ~ item.name;
		}
	}
	print("=[crafting]=>" ~ prbuf);
}
print("Stolen!");

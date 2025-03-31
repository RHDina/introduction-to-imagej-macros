// Examples - Measurements
Table.create("my_results_table");
selectWindow("my_results_table");
for (i = 0; i < roiManager("count"); i++) {
	roiManager("select", i);
	contrast = getValue("Max") - getValue("Min");
	Table.set("Type", i, Roi.getType);
	Table.set("Contrast", i, contrast);
	Table.set("Centroid-X", i, getValue("X"));
	Table.set("Centroid-Y", i, getValue("Y"));
	Table.set("Areas", i, getValue("Area"));
	for (s = 0; s < nSlices; s++) {
		Stack.setChannel(s);
		Table.set("Mean-ch"+s, i, getValue("Mean"));
	}
}

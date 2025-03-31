// Examples - Measurements

for (i = 0; i < roiManager("count"); i++) {
	roiManager("select", i);
	Stack.setChannel(1);
	contrast = getValue("Max") - getValue("Min");
	setResult("Type", i, Roi.getType);
	setResult("Contrast", i, contrast);
	setResult("Centroid-X", i, getValue("X"));
	setResult("Centroid-Y", i, getValue("Y"));
	setResult("Areas", i, getValue("Area"));
}
updateResults();
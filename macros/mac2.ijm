// recorded macro
selectImage("Zeiss1328.lsm");
run("Duplicate...", "title=nuclei duplicate channels=4");
run("Gaussian Blur...", "sigma=3");
setAutoThreshold("Mean dark no-reset");
setOption("BlackBackground", true);
run("Convert to Mask");
run("Fill Holes");
run("Watershed");
run("Analyze Particles...", "size=3-Infinity add");
//close;
selectImage("Zeiss1328.lsm");
run("Set Measurements...", "area mean min integrated redirect=None decimal=3");
roiManager("Measure");
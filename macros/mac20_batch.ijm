//@ File (label = "Select the folder", style = "directory") folder
//@Integer(label="sigma") sigma
//@String(label="Threshold", choices={"Default","Otsu", "Mean"}) threshold

list = getFileList(folder);
processFolder(folder, list);

// Process files in a folder
function processFolder(folder, list) {
	for (i = 0; i < list.length; i++) {
		path = folder + File.separator + list[i];
		open(path);
		image_id = getImageID();
		segmentNuclei(image_id, sigma, threshold);
	}
}

function segmentNuclei(image_id, sigma, threshold) { 
	selectImage(image_id);
	image_title = getTitle();
	print("We are processing "+image_title);
	selectImage(image_id);
	run("Duplicate...", "title=nuclei duplicate channels=4");
	run("Gaussian Blur...", "sigma="+sigma);
	setAutoThreshold(threshold+" dark no-reset");
	setOption("BlackBackground", true);
	run("Convert to Mask");
	run("Fill Holes");
	run("Watershed");
	run("Analyze Particles...", "size=3-Infinity add");
	selectImage(image_id);
	run("Set Measurements...", "area mean min integrated redirect=None decimal=3");
	roiManager("Measure");
}



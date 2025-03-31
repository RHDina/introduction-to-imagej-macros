/* multi-line comments to describe the macro here
 */

macro "Hello World [g]" {
	message = "Hello World! "; // in-line comment
	if (nImages > 0) {
		message += "There are " + nImages + " images opened.";
	} else {
		message += "There are no opened image.";
	}
    print(message);
}

// check if a variable local or global
 print("\\Clear");
my_variable = 3;
print("Before:", my_variable);

function overWrite() { 
	// attribute a value 5 to my_variable
	my_variable = 5;
}

// run the overWrite function
overWrite()
print("After:", my_variable);
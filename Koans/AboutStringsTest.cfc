/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="mxunit.framework.TestCase"{

	/**
	*@order 1
	*/
	public void function testGettingStringLength(){
		
		// Use the len() function to return the length of a string or binary object
		// For now, we'll work with a simple string
		// Usage: len(string)
		
		var myVar = "apple";

		assertEquals(len(myVar),"__");
		
	}

	/**
	*@order 2
	*/
	public void function testRepeatingString(){
		
		// Use the repeatString() function to repeat a string
		// Usage: repeatString(string, count)

		var myVar = "Ho! "; // Notice the trailing space

		assertEquals(repeatString(myVar, 3), "__");

	}

	/**
	*@order 3
	*/
	public void function testReversingString(){
		
		// Use the reverse() function to reverse a string
		// Usage: reverse(string)

		var myVar = "otatop";

		assertEquals(reverse(myVar), "__"); // Hint: spuds

	}

	/**
	*@order 4
	*/
	public void function testGettingStringContentFromLeft(){
		
		// Use the left() function to return a specified number of characters from a string, beginning at the left.
		// Usage: left(string, count)

		var myVar = "peanut";
		
		assertEquals(left(myVar, 3), "__" );

	}

	/**
	*@order 5
	*/
	public void function testGettingStringContentFromRight(){

		// Use the right() function to return a specified number of characters from a string, beginning at the right.
		// Usage: right(string, count)

		var myVar = "peanut";
		
		assertEquals(right(myVar, 3), "__" );

	}

	/**
	*@order 6
	*/
	public void function testGettingSubString(){
		
		// Use the mid() function to  extract a substring from a string
		// Usage: mid(string, start, count)

		var goodActor = "Chevy Case";

		// Hint: Good automobile maker
		assertEquals(mid(goodActor, 1, 5), "__"); 
	}

	/**
	*@order 7
	*/
	public void function testAddingStringAndNumber(){
		//string concatanation in ColdFusion is done with the & sign
		var myVar = 1 & "Hello";
		assertEquals(myVar,"__");
	}	

	/**
	*@order 8
	*/
	public void function testRemovingWhiteSpace(){
		var myVar = "  hello world!  ";

		assertEquals(trim(myVar),"__");
	}
	
	/**
	*@order 9
	*/
	public void function testRemovingLeadingSpaces() {

		// Use the lTrim() function to removes spaces from the beginning of a string
		// Usage: lTrim(string)

		var myVar = "  hello world!  ";		

		assertEquals(lTrim(myVar), "__");
	}

	/**
	*@order 10
	*/
	public void function testRemovingTrailingSpaces() {

		// Use the rTrim() function to removes spaces from the end of a string
		// Usage: rTrim(string)

		var myVar = "  hello world!  ";		

		assertEquals(rTrim(myVar), "__");

	}

	/**
	*@order 11
	*/
	public void function testRemovingChars(){
		
		// Use the removeChars() function to remove characters from a string
		// Usage: removeChars(string, start, count)

		var greatMoviePlot = "Marty and the Doc go back to the future";

		// Hint: another great movie plot.

		assertEquals(removeChars(greatMoviePlot, 21, 5), "__");

	}

	/**
	*@order 12
	*/
	public void function testSearchingString(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(findNoCase("ANY",myVar),"__");
	}

	/**
	*@order 13
	*/
	public void function testSearchingString2(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(findNoCase("ANY",myVar,26),"__");
	}

	/**
	*@order 14
	*/
	public void function testSearchingString3(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(find("ANY",myVar,26),"__");
	}

	/**
	*@order 15
	*/
	public void function testStringReplace(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(replace(myVar,"any","pound"),"__");
	}

	/**
	*@order 16
	*/
	public void function testStringReplace2(){
		var myVar = "To start press any key.  Wheres the any key?";

		//Did that last test get you?  To replace all occurances you need to pass another argument to find
		assertEquals(replace(myVar,"any","pound","all"),"__");
	}

	/**
	*@order 17
	*/
	public void function testSpanExcluding(){
		
		// Use the spanExcluding() function to gets characters from a string, starting from the beginning and stopping when it encounters any of the specified characters
		// Note: The search is case sensitive. 
		// Usage: spanExcluding(string, set)

		var martySays = "Yeah well Biff, you're forgetting one thing. What the heck is that!!?";
		// Hint: Watch out for trailing spaces

		assertEquals(spanExcluding(martySays, "W"), "__");

	}

	/**
	*@order 18
	*/
	public void function testSpanIncluding(){
		
		// Use the spanIncluding() function to get characters from a string, from the beginning and stopping when it encounters any character that IS NOT in the specified character set. 
		// Note: The search is case sensitive. 
		// Usage: spanIncluding(string, set)

		var martySays = "This is heavy.";

		// Hint: If letters could talk, one might say this.

		assertEquals(spanIncluding(martySays, "This "), "__");

	}
}
/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="mxunit.framework.TestCase"{

	/**
	*@order 1
	*/
	public void function testGettingAndFormattingCurrentTime(){
		var myDate = NOW();
		
		assertEquals(dateFormat(myDate,"mm/dd/yyyy"),"__");
	}

	/**
	*@order 2
	*/
	public void function testAddingToDate(){
		var myDate = NOW();

		myDate = dateAdd("d",7,myDate);

		assertEquals(dateFormat(myDate,"mm/dd/yyyy"),"__");
	}

	/**
	*@order 3
	*/
	public void function testSubtractingDates(){
		var myDate1 = NOW();
		var myDate2 = dateAdd("d",7,myDate1);

		//you can quickly compare dates by performing simple math on them
		assertEquals(myDate1 - myDate2,"__");
	}

	/**
	*@order 4
	*/
	public void function testComparingDates(){
		var myDate1 = NOW();
		var myDate2 = dateAdd("d",26,myDate1);

		var diff = dateDiff("ww",myDate1,myDate2);
		//will the dateDiff round up or down?
		assertEquals(diff,"__");
	}

	/**
	*@order 5
	*/
	public void function testLoopingThroughDates(){
		var i = "";
		var now = NOW();
		var myDate = "";

		for(i = now();i<dateAdd("d",5,now);i = i + 1){
			//do somethign to each date in here, how cool is this?
		}
		
		//another thing to note here is that i is function scoped, not block scoped in the loop like in some languages
		assertEquals(dateFormat(i,"mm/dd/yyyy"),"__");
	}

	/**
	*@order 6
	*/
	public void function testWorkingWithDates(){
		
		myDate = parseDateTime("01/01/77");		
		assertEquals(isDate(myDate),"__");

		myDate = parseDateTime("01.01.77");		
		assertEquals(isDate(myDate),"__");

		var myDate = parseDateTime("January 1, 1977");		
		assertEquals(isDate(myDate),"__");

		var myDate = parseDateTime("Wednesday, October 25, 2011");		
		assertEquals(isDate(myDate),"__");	
	}

	/**
	*@order 7
	*/
	public void function testMonthAsString(){
		
		// Use the monthAsString() function to return the name of a specified month by passing a number
		// Usage: monthAsString(monthNumber)
		// Reference: http://help.adobe.com/en_US/ColdFusion/9.0/CFMLRef/WSc3ff6d0ea77859461172e0811cbec22c24-7ee4.html

		// Let's say your birthday is in March. The numbers work out like this:
		// January = 1, February = 2, etc.
		var myBirthdayMonth = 3;

		assertEquals(monthAsString(myBirthdayMonth), "__");

	}
}
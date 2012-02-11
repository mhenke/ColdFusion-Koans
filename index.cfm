	<cfscript>
	testSuite = new mxunit.framework.TestSuite();

	testSuite.addAll("Koans.AboutAssertsTest");
	testSuite.addAll("Koans.AboutVariablesTest");
	testSuite.addAll("Koans.AboutBooleansTest");
	testSuite.addAll("Koans.AboutStringsTest");
	testSuite.addAll("Koans.AboutNumbersTest");
	testSuite.addAll("Koans.AboutDatesTest");
	testSuite.addAll("Koans.AboutArraysTest");
	testSuite.addAll("Koans.AboutStructsTest");
	testSuite.addAll("Koans.AboutListsTest");
	testSuite.addAll("Koans.AboutFunctionsTest");
	testSuite.addAll("Koans.AboutComponentsTest");
	testSuite.addAll("Koans.AboutComponentTagsTest");
	testSuite.addAll("Koans.AboutExceptionsTest");
	testSuite.addAll("Koans.AboutQueriesTest");

	results = testSuite.run();

	results = replaceNoCase(results.getResultsOutput("html"),"#application.currentDirectory#.","","ALL");
	results = replaceNoCase(results,"/mxunit","mxunit","ALL");

</cfscript>
<div style="v-align:top">
<span>
<img src="cfkoanslogo.png" style="width:200px"/>
</span>
<span style="font-size:15px; font-style:bold">Welcome to the ColdFusion Koans</span>
</div>
<p>The ColdFusion Koans are a set of unit tests that the user must make pass by filling in values. To get started open the file AboutAsserts/AboutAsserts.cfc and begin making the tests pass.</p>
<p>As you complete a secion you'll confirm your tests by refreshing this page or running the test suite using the mxunit eclipse plugin.</p>
<p><b>This is a comunity run project to please feel free to fork this project and contribute any time.</b></p>com
<cfoutput>
	#results#
</cfoutput>


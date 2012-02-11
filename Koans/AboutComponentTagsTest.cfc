<cfcomponent extends="mxunit.framework.TestCase" mxunit:decorators=mxunit.framework.decorators.OrderedTestDecorator>
	
	<cffunction name="testDynamicInvocation" returntype="void" access="public" output="false" hint="" order="1">
		<!--- There are some powerful things that we can't do in scripts yet, like calling the cfinvoke function --->	
		<!--- Lets say we want to dynamically call a function on a coponent.  Here we'll use list values to call methods in the test component --->
		<cfset var myList = "one,two" />
		<cfset var valueArray = [] />

		<cfloop list="#myList#" index="i">
			<cfinvoke component="Components.testComponent" method="get#i#" returnvariable="retVar" />
			<cfset arrayAppend(valueArray,retVar) />
		</cfloop>

		<!--- hint: create a new array and populate it with the expected values from calling the functions in 
			  /Components/testComponent.cfc --->
		<cfset assertEquals(valueArray,"__") />

	</cffunction>

</cfcomponent>
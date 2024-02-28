var $context : Object

If (Form:C1466.trace)
	TRACE:C157
End if 


$context:=New object:C1471
//$context.tableDataSource:=Formula from string(Form.memoDataSource).call()

//$context.tableDataSource:=ds.People.all().orderBy("continent asc, country asc, city asc, lastname asc")


$context.tableDataSource:=SampleData  // Formula(SampleData).call()
If (Shift down:C543)
	$context.tableDataSource:=ds:C1482.People.all().orderBy("continent asc, country asc, city asc, lastname asc")
End if 

WP SET DATA CONTEXT:C1786(WParea2; $context)
WP SET VIEW PROPERTIES:C1648(WParea2; New object:C1471(wk visible references:K81:286; False:C215))
WP COMPUTE FORMULAS:C1707(WParea2)





$context:=New object:C1471
//$context.tableDataSource:=Formula from string(Form.memoDataSource).call()

$context.tableDataSource:=ds:C1482.People.all().orderBy("continent asc, country asc, city asc, lastname asc")


WP SET DATA CONTEXT:C1786(WParea2; $context)
WP COMPUTE FORMULAS:C1707(WParea2)


WP SET VIEW PROPERTIES:C1648(WParea2; New object:C1471(wk visible references:K81:286; False:C215))
WP COMPUTE FORMULAS:C1707(WParea2)

OBJECT SET VISIBLE:C603(*; "Note"; False:C215)

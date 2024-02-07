//%attributes = {"invisible":true}
FakeData_ArraysInit


$companyTemplate:=New object:C1471()
$companyTemplate.name:="company"
$companyTemplate.address:="address"
$companyTemplate.zipCode:="zipCode"
$companyTemplate.city:="city"
$companyTemplate.phone:="phone"


$peopleTemplate:=New object:C1471()
$peopleTemplate.title:="title"
$peopleTemplate.lastname:="lastname"
$peopleTemplate.firstname:="firstname"
$peopleTemplate.city:="city"
$peopleTemplate.phone:="phone"
$peopleTemplate.address:="address"
$peopleTemplate.zipCode:="zipCode"

For ($j; 1; 10)  // 10 companies
	
	$c:=ds:C1482.Company.new()
	FakeData_FillObjectTemplate($companyTemplate; $c)
	$c.save()
	
	For ($i; 1; 75+(Random:C100%25))
		$p:=ds:C1482.People.new()
		FakeData_FillObjectTemplate($peopleTemplate; $p)
		
		$p.salary:=1500+(Random:C100%1000)+((Random:C100%50)/Pi:K30:1)
		
		$p.worksFor:=$c
		
		$p.save()
	End for 
	
End for 


FakeData_ArraysDeinit


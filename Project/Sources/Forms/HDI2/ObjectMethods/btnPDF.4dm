If (Form:C1466.trace)
	TRACE:C157
End if 


CALL WORKER:C1389("printExport"; "W_PrintExport"; "exportPDF"; OB Copy:C1225(WParea2); ds:C1482.People.all().orderBy("continent asc, country asc, city asc, lastname asc"))

//%attributes = {}
If (Not:C34(Is nil pointer:C315(Current form table:C627)))
	$table:=Current form table:C627
	
	SET WINDOW TITLE:C213(Table name:C256($table)+" "+String:C10(Records in selection:C76($table->))+"/"+String:C10(Records in table:C83($table->)))
	
End if 



//%attributes = {}
  // ----------------------------------------------------
  // User name (OS): Umberto Migliore
  // Date and time: 31/01/20, 14:33:16
  // ----------------------------------------------------
  // Method: eth_createRecords
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------

C_OBJECT:C1216($1;$obj)
C_COLLECTION:C1488($aTrans;0)
$obj:=$1

QUERY:C277([Blocks:2];[Blocks:2]number:2=$obj.number)
If (Records in selection:C76([Blocks:2])#1)
	JSON TO SELECTION:C1235([Blocks:2];"["+JSON Stringify:C1217($obj)+"]")
	
	$aTrans:=OB Get:C1224($obj;"transactions")
	If ($aTrans.length>0)
		$strTrans:=JSON Stringify array:C1228($aTrans)
		JSON TO SELECTION:C1235([Transactions:3];$strTrans)
	End if 
	
End if 
UNLOAD RECORD:C212([Blocks:2])
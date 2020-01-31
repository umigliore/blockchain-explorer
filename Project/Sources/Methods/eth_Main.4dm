//%attributes = {}
  // ----------------------------------------------------
  // User name (OS): Umberto Migliore
  // Date and time: 04/12/19, 13:11:12
  // ----------------------------------------------------
  // Method: blockchain
  // Description
  // 
  // Main procedure to call Ethereum network
  // 
  // ----------------------------------------------------

C_OBJECT:C1216($pref;$oParams;$content;$response)
C_COLLECTION:C1488($aParams;$2)
C_TEXT:C284($metodo;$1;$completeUrl)

$pref:=Pref_load ("Default")
If (OB Is empty:C1297($pref))
	ALERT:C41("Please fill preferences Default record with info from your Infura account")
	Pref_save ("Default";New object:C1471("id";"";"secret";"";"endpoint";"";"name";""))  // obtain info key from Infura
	$0:=""
	
Else 
	$completeUrl:=$pref.endpoint
	If ($completeUrl="")
		$0:="Error: missing endpoint"
		
	Else 
		$metodo:=$1
		$aParams:=$2
		
		$progressivo:=1  // to fix
		$content:=New object:C1471("jsonrpc";"2.0";"method";$metodo;"id";$progressivo;"params";$aParams)
		
		$response:=New object:C1471
		
		ARRAY TEXT:C222($headerNames;1)
		ARRAY TEXT:C222($headerValues;1)
		$headerNames{1}:="Content-Type"
		$headerValues{1}:="application/json"
		
		$res:=HTTP Request:C1158(HTTP POST method:K71:2;"https://"+$completeUrl;$content;$response;$headerNames;$headerValues)
		$0:=$response.result
		
	End if 
End if 
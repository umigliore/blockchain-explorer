//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Umberto Migliore
  // Date and time: 04/12/19, 13:07:00
  // ----------------------------------------------------
  // Method: eth_getBalance
  // Description
  // $1 = address
  // $2 = block number, "latest", "earliest", "pending"
  // Parameters
  // ----------------------------------------------------

C_OBJECT:C1216($0)
C_TEXT:C284($blockNumber)
C_BOOLEAN:C305($show)
C_COLLECTION:C1488($aParams)
$address:=$1
$blockNumber:=$2

If (Length:C16($address)#42)  // 0xAABB...
	$0:=New object:C1471("result";"Error";"message";"Bad address format")
	
Else 
	$aParams:=New collection:C1472
	$aParams.push($address)
	$aParams.push($blockNumber)
	
	$0:=eth_Main ("eth_getBalance";$aParams)
End if 
C_OBJECT:C1216($oResult)
C_TEXT:C284(anAddress)
If (anAddress="")
	ALERT:C41("Please insert an address")
Else 
	$oResult:=eth_getBalance (anAddress;"latest")
	  // TODO: check error
	$weiHex:=$oResult.result
	$num:=u_HexToDec ($weiHex)
	$balance:=u_fromWei ($num;"ether")  // WEI TO ETHER, X / 10^18
	ALERT:C41(anAddress+" has "+$balance+" Ether")
End if 
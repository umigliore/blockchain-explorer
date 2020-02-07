//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Umberto Migliore
  // Date and time: 14/12/19, 22:28:08
  // ----------------------------------------------------
  // Method: u_fromWei
  // Description
  // Takes a number of wei and converts it to any other ether unit
  //
  // Parameters
  // ----------------------------------------------------

C_OBJECT:C1216(unitsMap)
C_TEXT:C284($inputUnit;$2)
C_REAL:C285($1)

unitsMap:=New object:C1471
OB SET:C1220(unitsMap;"noether";"0")
OB SET:C1220(unitsMap;"wei";"1")
OB SET:C1220(unitsMap;"kwei";"1000")
OB SET:C1220(unitsMap;"Kwei";"1000")
OB SET:C1220(unitsMap;"babbage";"1000")
OB SET:C1220(unitsMap;"femtoether";"1000")
OB SET:C1220(unitsMap;"mwei";"1000000")
OB SET:C1220(unitsMap;"Mwei";"1000000")
OB SET:C1220(unitsMap;"lovelace";"1000000")
OB SET:C1220(unitsMap;"picoether";"1000000")
OB SET:C1220(unitsMap;"gwei";"1000000000")
OB SET:C1220(unitsMap;"Gwei";"1000000000")
OB SET:C1220(unitsMap;"shannon";"1000000000")
OB SET:C1220(unitsMap;"nanoether";"1000000000")
OB SET:C1220(unitsMap;"nano";"1000000000")
OB SET:C1220(unitsMap;"szabo";"1000000000000")
OB SET:C1220(unitsMap;"microether";"1000000000000")
OB SET:C1220(unitsMap;"micro";"1000000000000")
OB SET:C1220(unitsMap;"finney";"1000000000000000")
OB SET:C1220(unitsMap;"milliether";"1000000000000000")
OB SET:C1220(unitsMap;"milli";"1000000000000000")
OB SET:C1220(unitsMap;"ether";"1000000000000000000")
OB SET:C1220(unitsMap;"kether";"1000000000000000000000")
OB SET:C1220(unitsMap;"grand";"1000000000000000000000")
OB SET:C1220(unitsMap;"mether";"1000000000000000000000000")
OB SET:C1220(unitsMap;"gether";"1000000000000000000000000000")
OB SET:C1220(unitsMap;"tether";"1000000000000000000000000000000")

$bn:=$1
If ($bn=0)
	$0:="0"
	
Else 
	If (Count parameters:C259=1)
		$unit:=OB Get:C1224(unitsMap;"ether";Is text:K8:3)
	Else 
		$inputUnit:=$2
		$unit:=OB Get:C1224(unitsMap;$inputUnit;Is text:K8:3)
	End if 
	
	If ($unit="")
		$0:="Err Unit not known"
	Else 
		$0:=String:C10($bn/Num:C11($unit))
	End if 
End if 

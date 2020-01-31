//%attributes = {}
  // ----------------------------------------------------
  // User name (OS): Umberto Migliore
  // Date and time: 04/12/19, 12:18:34
  // ----------------------------------------------------
  // Method: Pref_load
  // Description
  // search for a preference (name $1)
  // create a default value (optional, value $2)
  // ----------------------------------------------------
C_OBJECT:C1216($0;$2)
C_TEXT:C284($1)

QUERY:C277([Preferences:1];[Preferences:1]Name:2=$1)
If (Records in selection:C76([Preferences:1])=0)
	If (Count parameters:C259>1)
		$default:=$2
	Else 
		$default:=New object:C1471
	End if 
	CREATE RECORD:C68([Preferences:1])
	[Preferences:1]Name:2:=$1
	[Preferences:1]Value:3:=$default
	SAVE RECORD:C53([Preferences:1])
End if 
$0:=[Preferences:1]Value:3
UNLOAD RECORD:C212([Preferences:1])
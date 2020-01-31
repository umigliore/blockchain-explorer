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

C_TEXT:C284($1)
C_OBJECT:C1216($2)

QUERY:C277([Preferences:1];[Preferences:1]Name:2=$1)
If (Records in selection:C76([Preferences:1])=0)  //se non c'è crealo
	CREATE RECORD:C68([Preferences:1])
	[Preferences:1]Name:2:=$1
Else   //altrimenti controlla che sia libero
	u_LoadWithTimeout (->[Preferences:1])
End if 
[Preferences:1]Value:3:=$2
SAVE RECORD:C53([Preferences:1])
READ ONLY:C145([Preferences:1])
UNLOAD RECORD:C212([Preferences:1])
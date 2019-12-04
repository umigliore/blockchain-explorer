//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Umberto Migliore
  // Date and time: 04/12/19, 12:26:12
  // ----------------------------------------------------
  // Method: u_LoadWithTimeout
  // Description
  // Try to load a locked record
  // $1 = pointer of table
  //
  // Parameters
  // ----------------------------------------------------

READ WRITE:C146($1->)
LOAD RECORD:C52($1->)
$start:=Tickcount:C458
While ((Locked:C147($1->)) & ((Tickcount:C458-$start)<600))  //aspetta 10 secondi, almeno
	DELAY PROCESS:C323(Current process:C322;10)
	LOAD RECORD:C52($1->)
End while 
$0:=Not:C34(Locked:C147($1->))

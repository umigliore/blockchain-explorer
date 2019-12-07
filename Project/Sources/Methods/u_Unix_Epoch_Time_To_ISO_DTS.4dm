//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Umberto Migliore
  // Date and time: 07/12/19, 22:35:47
  // ----------------------------------------------------
  // Method: u_Unix_Epocj_Time_To_ISO_DTS
  // Description
  // $1 - Longint - Seconds since 1/1/1970 to covert
  //
  // cfr https://kb.4d.com/assetid=77640
  // ----------------------------------------------------

C_TEXT:C284($0;$ISO_DTS_T)
C_LONGINT:C283($EpochDtTi_L;$1)
C_LONGINT:C283($Ndx;$SOA;$RIS;$Params_L;$SecsPerDay_L;$SecToToday_L;$Rem_L;$SecPerHr_L;$SecPerMin_L)\

C_DATE:C307($EPOCH_Date_D;$Today_D)
C_TIME:C306($Time_H)


  //====================== Initialize and Setup ================================

$Params_L:=Count parameters:C259
If ($Params_L>0)
	$EpochDtTi_L:=$1
	$Epoch_Date_D:=Date:C102("1/1/1970")
	
	$SecPerMin_L:=60
	$SecPerHr_L:=$SecPerMin_L*60
	$SecsPerDay_L:=$SecPerHr_L*24
	
	  //======================== Method Actions ==================================
	
	  // Longint division
	  //
	$SecToToday_L:=$EpochDtTi_L\$SecsPerDay_L
	
	$Today_D:=Add to date:C393($Epoch_Date_D;0;0;$SecToToday_L)
	
	$Rem_L:=$EpochDtTi_L-($SecToToday_L*$SecsPerDay_L)
	$Time_H:=Time:C179($Rem_L)
	$ISO_DTS_T:=String:C10($Today_D;ISO date:K1:8;$Time_H)
	
	  //======================== Clean up and Exit =================================
	
	$0:=$ISO_DTS_T
	
End if 
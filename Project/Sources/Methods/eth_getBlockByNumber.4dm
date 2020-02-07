//%attributes = {}
  // ----------------------------------------------------
  // User name (OS): Umberto Migliore
  // Date and time: 04/12/19, 13:07:00
  // ----------------------------------------------------
  // Method: eth_getBlockByNumber
  // Description
  // $1 = block number, "latest", "earliest", "pending"
  // $2 = Show Transaction Details
  // Parameters
  // ----------------------------------------------------

C_TEXT:C284($blockNumber)
C_BOOLEAN:C305($show)
C_COLLECTION:C1488($aParams)
$blockNumber:=$1
$show:=$2

$aParams:=New collection:C1472
$aParams.push($blockNumber)
$aParams.push($show)

$0:=eth_Main ("eth_getBlockByNumber";$aParams)

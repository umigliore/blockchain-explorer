C_OBJECT:C1216(tResult;$r)
$r:=eth_getBlockByNumber ("latest";True:C214)
tResult:=$r.result
eth_createRecords (tResult)

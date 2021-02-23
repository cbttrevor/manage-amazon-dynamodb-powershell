# Confirm that continuous backups are enabled
Get-DDBContinuousBackup -TableName trevor | ConvertTo-Json

# Invoke the restore operation
Restore-DDBTableToPointInTime -SourceTableName trevor -TargetTableName trevorrestored -UseLatestRestorableTime $true

# Examine the new table created from the restore
Get-DDBTable -TableName trevorrestored
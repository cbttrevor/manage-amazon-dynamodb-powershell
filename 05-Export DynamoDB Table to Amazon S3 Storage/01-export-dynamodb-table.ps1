Get-AWSCmdletName -ApiOperation UpdateContinuousBackups

# List tables in the AWS account and current AWS region
Get-DDBTableList

# Get details about the DynamoDB table
$Table = Get-DDBTable -TableName trevor

# Configure Point-in-time-Recovery (PITR) on the DynamoDB table
$Result = Update-DDBContinuousBackup -TableName trevor -PointInTimeRecoverySpecification_PointInTimeRecoveryEnabled $true
$Result.PointInTimeRecoveryDescription

# What is the status of continuous backup?
Get-DDBContinuousBackup -TableName trevor

Export-DDBTableToPointInTime -ExportFormat DYNAMODB_JSON -ExportTime (Get-Date) -S3Bucket trevor-usw2 -S3Prefix ddb/trevor -TableArn $Table.TableArn

# Get latest status on the export
Get-DDBExportList

Get-DDBExport -ExportArn arn:aws:dynamodb:us-west-2:665453315198:table/trevor/export/01614059251397-a37be473
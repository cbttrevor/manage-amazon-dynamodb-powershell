## Learning Objectives

* You can export an Amazon DynamoDB table to Amazon Simple Storage Service (S3) for backups
* The DynamoDB REST API call for this operation is `ExportTableToPointInTime`
  * The corresponding PowerShell command for this operation is `Export-DDBTableToPointInTime`
* You must first enable Point-in-time-Recovery (PITR) using the `UpdateContinuousBackups` REST API in DynamoDB
  * `Get-AWSCmdletName -ApiOperation UpdateContinuousBackups`
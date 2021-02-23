# Documentation: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/AutoScaling.CLI.html

Get-DDBTable -TableName trevor

Get-AWSCmdletName -ApiOperation RegisterScalableTarget

# Register the DynamoDB table with the AWS Auto Scaling service
Add-AASScalableTarget -MaxCapacity 50 -MinCapacity 2 -ResourceId table/trevor -ServiceNamespace dynamodb -ScalableDimension dynamodb:table:WriteCapacityUnits

# Confirm that DynamoDB table has been registered with AWS Application Auto Scaling service
Get-AASScalableTarget -ServiceNamespace dynamodb

Get-AWSCmdletName -ApiOperation PutScalingPolicy

# Configure a scaling policy
$Params = @{
    ServiceNamespace = 'dynamodb'
    ScalableDimension = 'dynamodb:table:WriteCapacityUnits'
    ResourceId = 'table/trevor'
    PolicyName = 'trevordynamodb'
    PolicyType = 'TargetTrackingScaling'
    TargetTrackingScalingPolicyConfiguration_ScaleInCooldown = 30
    TargetTrackingScalingPolicyConfiguration_ScaleOutCooldown = 30
    TargetTrackingScalingPolicyConfiguration_TargetValue = 10
    PredefinedMetricSpecification_PredefinedMetricType = 'DynamoDBReadCapacityUtilization'
}
Set-AASScalingPolicy @Params

Get-AASScalingActivity -ServiceNamespace dynamodb
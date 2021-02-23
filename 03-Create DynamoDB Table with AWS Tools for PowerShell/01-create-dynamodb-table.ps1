## Let's learn how to create an Amazon DynamoDB table using AWS Tools for PowerShell

# What commands are exported by the AWS Tools for PowerShell?
Get-Command -Module AWS.Tools.DynamoDBv2

# What happens if we call New-DDBTable without any parameters?
New-DDBTable

# Create a new DynamoDB table
New-DDBTable -TableName trevor -ReadCapacity 2 -WriteCapacity 2 -Schema $Schema

# How do we construct a TableSchema object?
Get-Command -Module AWS.Tools.DynamoDBv2 -Name *schem*

# Create a DynamoDB table schema and add a hash key to it
$Schema = New-DDBTableSchema
$Schema | Add-DDBKeySchema -KeyName author -KeyType HASH -KeyDataType S

# Create the DynamoDB table
New-DDBTable -TableName trevor2 -ReadCapacity 2 -WriteCapacity 2 -Schema $Schema
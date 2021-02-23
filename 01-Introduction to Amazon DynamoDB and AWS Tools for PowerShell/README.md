## Learning Objectives

### About Amazon DynamoDB

* NoSQL data storage solution that stores and indexes JSON documents as "items"
* Managed service that doesn't require infrastructure provisioning or management
* Data is replicated across multiple AWS Availability Zones, for durability and high availability

* Simply create a table, and start writing items into it
* Unlike relational databases where you have tables and rows, you instead have "items"
* Maximum individual item size is 400 KB
* High performance, backed by SSDs

### Why Use AWS Tools for PowerShell?

* Dataplane operations are not available in PowerShell, however there is an [open GitHub issue](https://github.com/aws/aws-tools-for-powershell/issues/41) tracking it
* You can use it in AWS Lambda to automate table provisioning tasks
* Create backups quickly from the command line across multiple tables
* Easily restore back to a specific point in time, using Point-in-time-Recovery (PITR) feature of DynamoDB
* Scale up read / write capacity units without any downtime

* PowerShell is a cross-platorm and open source automation framework / programming langage from Microsoft
* PowerShell runs natively on MacOS, Linux, and Windows 10 (and ARM CPUs), thanks to the x-plat .NET Core framework
* You can run PowerShell automation tasks in Linux or Windows containers and AWS Lambda

### What You'll Learn

* Set up the AWS Tools for PowerShell for DynamoDB
* Create an IAM user with the appropriate access policies for DynamoDB and Auto Scaling
* Create DynamoDB tables and a hash and range key with PowerShell
* Scale provisioned read / write capacity units on DynamoDB tables
* Enable Point in time Recovery feature on DynamoDB tables
* Export DynamoDB tables to Amazon S3 storage
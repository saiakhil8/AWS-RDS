
resource "aws_db_subnet_group" "rdsDbSubnetGroup" {
  name       = var.dbSubNetGroupName
  subnet_ids = var.subnetIds
  count = var.isDbSubnetGroupExists ? 0:1
  tags = var.tags
}

resource "aws_db_instance" "rdsInstance" {
  allocated_storage    = var.rdsAllocatedStorage
  storage_type         = var.rdsStorageType
  engine               = var.rdsEngine
  engine_version       = var.rdsEngineVersion
  instance_class       = var.rdsInstanceClass
  name                 = var.rdsDatabaseName
  username             = var.rdsUserName
  skip_final_snapshot  = var.skipFinalSnapshot
  password             = var.rdsPassword
  db_subnet_group_name = var.isDbSubnetGroupExists ? var.dbSubNetGroupName : aws_db_subnet_group.rdsDbSubnetGroup.0.name
  license_model        = var.licenseModel
  multi_az             = var.isMultiAZ
  snapshot_identifier  = var.snapshotIdentifier
  performance_insights_enabled =  var.isPerformanceInsightsEnabled
  enabled_cloudwatch_logs_exports = var.cloudWatchLogExportsType

  tags = var.tags
}
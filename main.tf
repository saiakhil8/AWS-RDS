provider "aws" {
  version = "~> 2.0"
  region  = var.region
  access_key = var.awsAccessKey
  secret_key = var.awsSecretAccessKey
}

module "vpc" {
  source = "./vpc"
  createVpc                 = (var.vpcExists) ? false : true
  vpcCIDRBlock              = var.vpcCIDRBlock
  instanceTenancy           = var.instanceTenancy
  dnsSupport                = var.dnsSupport
  dnsHostNames              = var.dnsHostNames
  vpcName                   = var.vpcName
  subnetsList               = var.subnetsList
  subnetIds                 = var.subnetIds
  vpcId                     = var.vpcId
  isAutoCalculateSubnets    = var.isAutoCalculateSubnets
  isInternetGatewayRequired = var.isInternetGatewayRequired
}

module "rds_instance" {
  source = "./rds-instance"
  rdsAllocatedStorage            = var.rdsAllocatedStorage
  rdsStorageType                 = var.rdsStorageType
  rdsEngine                      = var.rdsEngine
  rdsEngineVersion               = var.rdsEngineVersion
  rdsInstanceClass               = var.rdsInstanceClass
  rdsDatabaseName                = (var.rdsDatabaseName == "") ? null : var.rdsDatabaseName
  rdsUserName                    = var.rdsUserName
  rdsPassword                    = var.rdsPassword
  isDbSubnetGroupExists          = var.isDbSubnetGroupExists
  dbSubNetGroupName              = var.dbSubNetGroupName
  licenseModel                   = lookup(var.licenseModel,var.rdsEngine,"license-included")
  skipFinalSnapshot              = var.skipFinalSnapshot
  subnetIds                      = module.vpc.subnetIds
  tags                           = var.tags
  isMultiAZ                      = var.isMultiAZ
  snapshotIdentifier             = var.snapshotIdentifier
  isPerformanceInsightsEnabled   = var.isPerformanceInsightsEnabled
  cloudWatchLogExportsType       = var.cloudWatchLogExportsType
}
variable "region" {
  type = string
  description = "Aws Region"
}

variable "awsAccessKey"{
  type = string
  description = "Aws Access key with full access to create and read VPC, RDS INSTANCE, DMS"
}

variable "awsSecretAccessKey"{
  type = string
  description = "Aws Secret Access key with full access to create and read VPC, RDS INSTANCE, DMS"
}

variable "vpcId"{
  type = string
  description = "VPC ID list"
}

variable "subnetIds"{
  type = list(string)
  description = "SubnetIds list"
}

variable "vpcExists"{
    type = bool
    description = "Bool specifying whether to create vpc or not"
    default = false
}

variable "vpcName"{
    type = string
    description = "VPC NAME"
}

variable "dnsSupport"{
    type = bool
    description = "DNS Support Required?"
    default = true
}

variable "dnsHostNames"{
    type = bool
    default = true
    description = "DNS HostNames Required?"
}

variable "vpcCIDRBlock"{
    type = string
    description = "CIDR BLOCK FOR VPC"
}

variable "subnetsList"{
    type = list(map(string))
    description = "List of subnets , Map includes name,cidrBlock, public or private"
}

variable "instanceTenancy"{
    type = string
    description = "Instance Tenancy"
    default = "default"
}

variable "isAutoCalculateSubnets"{
    type = bool
    description = "Do you want terraform to calculate subnet CIDR"
}

variable "isInternetGatewayRequired" {
    type = bool
    description = "Do you want to add Internet Gateway and associate Route Table to VPC"
}

variable "rdsEngine"{
  type = string
  description = "RDS ENGINE"
}

variable "rdsEngineVersion" {
  type = string
  description = "RDS Engine version"
}

variable "rdsStorageType" {
  type = string
  description = "Storage Type for RDS"
  default = "gp2"
}

variable "rdsInstanceClass"{
  type = string
  description = "RDS Instance Class"
}

variable "rdsDatabaseName" {
  type = string
  description = "RDS Database Name"
}

variable "rdsUserName"{
  type = string
  description = "RDS DB USERNAME"
}

variable "dbSubNetGroupName"{
  type = string
  description = "Subnet GroupName to be associated with this db"
}

variable "isDbSubnetGroupExists" {
  type = bool
  description = "for knowing to create or use existing DbSubnetGroup"
  default = true
}

variable "skipFinalSnapshot" {
  type = bool
  description = "Whether to delete or save final snapshot of RDS"
}

variable "rdsAllocatedStorage" {
  type = number
  description = "Required Storage for RDS"
  default = 20
}

variable "licenseModel"{
  type = map(string)
  description = "License Models"
  default = {"postgres":"postgresql-license","mysql":"general-public-license"}
}


variable "tags"{
  type = map(string)
  description = "Tags to be attached to the instance"
}

variable "isMultiAZ"{
  type =bool
  description = "is multiAz required"
}

variable "snapshotIdentifier"{
  type = string
  description "Identifier of the snapshot"
}

variable "isPerformanceInsightsEnabled"{
  type =bool
  description = "is PerformanceInsights required"
}

variable "cloudWatchLogExportsType"{
  type = string
  description "cloud watch log export type"
}
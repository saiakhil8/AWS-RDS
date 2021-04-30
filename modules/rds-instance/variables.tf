variable "rdsAllocatedStorage" {
  type = number
  description = "Required Storage for RDS"
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

variable "rdsPassword" {
  type = string
  description = "RDS DB Password"
}

variable "subnetIds"{
  type = list(string)
  description = "SubnetIds list"
}

variable "dbSubNetGroupName"{
  type = string
  description = "Subnet GroupName to be associated with this db"
}

variable "isDbSubnetGroupExists" {
  type = bool
  description = "for knowing to create or use existing DbSubnetGroup"
}

variable "licenseModel"{
  type = string
  description = "License Model for Oracle DB"
}

variable "skipFinalSnapshot" {
  type = bool
  description = "Whether to delete or save final snapshot"
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



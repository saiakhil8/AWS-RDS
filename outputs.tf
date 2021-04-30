output "subnetIds" {
    value = module.vpc.subnetIds
}

output "vpcId" {
    value = module.vpc.vpcId
}

output "rdsDbName" {
    value = module.rds_instance.db_name
    description = "Db name of the RDS Instance"
}

output "rdsDbEngine" {
    value = module.rds_instance.db_engine
    description = "Db Engine of the RDS Instance"
}

output "rdsDbPort" {
    value = module.rds_instance.db_port
    description = "Db port of the RDS Instance"
}

output "rdsInstanceId" {
    value = module.rds_instance.instance_id
    description = "InstanceId of the RDS Instance"
}

output "rdsDbVersion" {
    value = module.rds_instance.db_version
    description = "Db Version of the RDS Instance"
}

output "rdsHostName" {
    value = module.rds_instance.host_name 
    description = "HostName of the RDS Instance"
}

output "rdsArn" {
    value = module.rds_instance.arn
    description = "Arn of the RDS Instance"
}

output "rdsEndpoint" {
    value = module.rds_instance.endpoint
    description = "Endpoint of the RDS Instance"
}

output "rdsDbUserName" {
    value = module.rds_instance.db_username
    description = "UserName of the RDS DB Instance"
}

output "rdsMultiAz" {
    value = module.rds_instance.multi_az
}

output "rdsSubnetGroupName" {
    value = module.rds_instance.rdsSubnetGroupName
}

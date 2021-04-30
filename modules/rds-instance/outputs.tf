output "db_name" {
    value = aws_db_instance.rdsInstance.name
    description = "Db name of the RDS Instance"
}

output "db_engine" {
    value = aws_db_instance.rdsInstance.engine
    description = "Db Engine of the RDS Instance"
}

output "db_port" {
    value = aws_db_instance.rdsInstance.port 
    description = "Db port of the RDS Instance"
}

output "instance_id" {
    value = aws_db_instance.rdsInstance.id 
    description = "InstanceId of the RDS Instance"
}

output "db_version" {
    value = aws_db_instance.rdsInstance.engine_version 
    description = "Db Version of the RDS Instance"
}

output "host_name" {
    value = aws_db_instance.rdsInstance.address 
    description = "HostName of the RDS Instance"
}

output "arn" {
    value = aws_db_instance.rdsInstance.arn 
    description = "Arn of the RDS Instance"
}

output "endpoint" {
    value = aws_db_instance.rdsInstance.endpoint 
    description = "Endpoint of the RDS Instance"
}

output "db_username" {
    value = var.rdsUserName
    description = "UserName of the RDS DB Instance"
}

output "db_password" {
    value =  var.rdsPassword 
    description = "Password of the RDS DB Instance"
}

output "multi_az" {
    value = aws_db_instance.rdsInstance.multi_az
}

output "rdsSubnetGroupName" {
    value = var.dbSubNetGroupName 
}
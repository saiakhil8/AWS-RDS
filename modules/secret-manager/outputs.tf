

output "secret"{
    type =  string
    description = "Value of the secret"
    value = aws_secretsmanager_secret_version.secret.secret_string
}


output "secret_id"{
    type =  string
    description = "Id of the secret"
    value = aws_secretsmanager_secret.secret.id
}
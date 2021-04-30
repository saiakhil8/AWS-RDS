resource "aws_secretsmanager_secret" "secret" {
  name       = var.secret_name
  tags       = var.tags
}

resource "aws_secretsmanager_secret_version" "secret" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = random_string.random.result
}

resource "random_string" "random" {
  length           = 8
  special          = true
  override_special = "/@£$"
}
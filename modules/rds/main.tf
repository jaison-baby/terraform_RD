resource "aws_db_instance" "default" {
  allocated_storage    = var.storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instanceclass
  db_name                 = var.name
  username             = var.user
  password             = var.password
  parameter_group_name = var.paramete-name
  skip_final_snapshot  = true
  vpc_security_group_ids = [var.security-groupid]
  db_subnet_group_name = aws_db_subnet_group.rds-subnet-group.name
}


resource "aws_db_subnet_group" "rds-subnet-group" {
  name        = "rds-subnet-group"
  description = "Terraform example RDS subnet group"
  subnet_ids  = [var.subnetid,var.subnetid2]
}


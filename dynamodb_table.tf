resource "aws_dynamodb_table" "dbexample1" {
  name = var.table_name
  billing_mode = var.billing_mode
  hash_key = var.partition_key
  range_key = var.sort_key
  attribute {
    name = var.partition_key
    type = "S"
  }
  attribute {
    name = var.sort_key
    type = "S"
  }
  read_capacity = var.billing_mode == "PROVISIONED" ? var.read_capacity : 0
  write_capacity = var.billing_mode == "PROVISIONED" ? var.write_capacity : 0
  tags = {
    Environment = var.environment
    Project = var.project_name
  }
}
resource "aws_dynamodb_table" "my-table" {
  name = var.dynamo_table_name
    billing_mode = "PAY_PER-REQUEST"
    hash_key = "UserID"
    attribute {
    name = "UserID"
      type = "s"
  }
    tags = {
      Name = var.dynamodb_table_name
    }
}

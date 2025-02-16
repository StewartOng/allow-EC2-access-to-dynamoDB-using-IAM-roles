resource "aws_dynamodb_table" "book_inventory" {
  name           = "stewartEx2-5-TF-bookinventory"
  billing_mode   = "PAY_PER_REQUEST"  # No provisioned throughput
  hash_key       = "ISBN"             # Partition Key
  range_key      = "Genre"            # Sort Key

  attribute {
    name = "ISBN"
    type = "S"  # String type for ISBN
  }

  attribute {
    name = "Genre"
    type = "S"  # String type for Genre
  }

  tags = {
    Environment = "production"
  }
}

output "table_name" {
  value = aws_dynamodb_table.book_inventory.name
}

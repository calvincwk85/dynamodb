resource "aws_dynamodb_table" "BooksTable" {
  name         = "cal1-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "ISBN"

  attribute {
    name = "ISBN"
    type = "S"
  }

  tags = {
    Name        = "BooksTable"
    Environment = "Production"
  }
}

resource "aws_dynamodb_table_item" "book_1" {
  table_name = aws_dynamodb_table.BooksTable.name
  hash_key   = "ISBN"

  item = <<JSON
{
  "ISBN": {"S": "978-0134685991"},
  "Genre": {"S": "Technology"},
  "Title": {"S": "Effective Java"},
  "Author": {"S": "Joshua Bloch"},
  "Stock": {"N": "1"}
}
JSON
}

resource "aws_dynamodb_table_item" "book_2" {
  table_name = aws_dynamodb_table.BooksTable.name
  hash_key   = "ISBN"
  item = <<JSON
{
  "ISBN": {"S": "978-0134685009"},
  "Genre": {"S": "Technology"},
  "Title": {"S": "Learning Python"},
  "Author": {"S": "Mark Lutz"},
  "Stock": {"N": "2"}
}
JSON
}

resource "aws_dynamodb_table_item" "book_3" {
  table_name = aws_dynamodb_table.BooksTable.name
  hash_key   = "ISBN"

  item = <<JSON
{
  "ISBN": {"S": "974-0134789698"},
  "Genre": {"S": "Fiction"},
  "Title": {"S": "The Hitchhiker"},
  "Author": {"S": "Douglas Adams"},
  "Stock": {"N": "10"}
}
JSON
}

resource "aws_dynamodb_table_item" "book_4" {
  table_name = aws_dynamodb_table.BooksTable.name
  hash_key   = "ISBN"

  item = <<JSON
{
  "ISBN": {"S": "982-01346653457"},
  "Genre": {"S": "Fiction"},
  "Title": {"S": "Dune"},
  "Author": {"S": "Frank Herbert"},
  "Stock": {"N": "8"}
}
JSON
}

resource "aws_dynamodb_table_item" "book_5" {
  table_name = aws_dynamodb_table.BooksTable.name
  hash_key   = "ISBN"

  item = <<JSON
{
  "ISBN": {"S": "978-01346854325"},
  "Genre": {"S": "Technology"},
  "Title": {"S": "System Design"},
  "Author": {"S": "Mark Lutz"},
  "Stock": {"N": "9"}
}
JSON
}
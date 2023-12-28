resource "aws_s3_bucket" "lock-test-bucket-tf" {
  bucket = "lock-test-bucket-tf"
}

resource "aws_dynamodb_table" "lock_test_dynamo" {
  name = "lock_test_dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}
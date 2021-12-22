# TODO: Define the variable for aws_region
variable "aws_access_key" {}
variable aws_secret_key {}
variable "aws_region" {
  default = "us-east-1"
}
variable "greets_lambda" {
  default = "greet_lambda"
}
variable "lambda_output_path" {
  default = "output.zip"
}

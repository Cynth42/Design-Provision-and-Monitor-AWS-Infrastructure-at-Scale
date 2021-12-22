provider "aws" {
  access_key= var.aws_access_key
  secret_key = var.aws_secret_key
  region = "us-east-1"
}

data "archive_file" "lambda_archive" {
  type = "zip"
  source_file = "greet_lambda.py"
  output_path = var.lambda_output_path
}

resource "aws_iam_role" "lambda_exec_role" {
  name = "lambda_exec_role"
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
    {
        "Action": "sts:AssumeRole",
        "Principal": {
          "Service": "lambda.amazonaws.com"
        },
        "Effect": "Allow",
        "Sid": ""
    }
    ]
}
EOF
}

resource "aws_cloudwatch_log_group" "lambda_log_group" {
  name = "/aws/lambda/${var.greets_lambda}"
  retention_in_days = 14
}

resource "aws_iam_policy" "lambda_logging_policy" {
  name = "lambda_logging_policy"
  path = "/"
  description = "IAM policy for logging from a lambda"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "arn:aws:logs:*:*:*",
      "Effect": "Allow"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "lambda_logs" {
  role = aws_iam_role.lambda_exec_role.name
  policy_arn = aws_iam_policy.lambda_logging_policy.arn
}

resource "aws_lambda_function" "greeting_lambda" {
  function_name = var.greets_lambda
  filename = data.archive_file.lambda_archive.output_path
  source_code_hash = data.archive_file.lambda_archive.output_base64sha256
  handler = "greet_lambda.lambda_handler"
  runtime = "python3.9"
  role = aws_iam_role.lambda_exec_role.arn

  environment{
    variables = {
      greeting = "Hello World!!"
    }
  }
}

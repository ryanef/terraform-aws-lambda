data "archive_file" "lambda" {
  type        = var.archive_type
  source_file = var.source_file
  source_dir  = var.source_dir
  output_path = "${path.cwd}/${var.output_path}"
}


resource "aws_lambda_function" "lambda" {
  
  filename         = var.output_path
  function_name    = var.function_name
  role             = aws_iam_role.lambda_role.arn
  handler          = var.lambda_handler
  source_code_hash = data.archive_file.lambda.output_base64sha256
  runtime          = var.lambda_runtime

  environment {
    variables = var.environment_variables
  }
}

resource "aws_cloudwatch_log_group" "log" {
  name              = "${var.lambda_cw_prefix}-${var.function_name}"
  retention_in_days = var.log_retention_days
}


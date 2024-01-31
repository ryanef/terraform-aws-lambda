variable "archive_type" {
  default = "zip"
  type    = string
}

variable "environment_variables" {
  type = map(string)
  default = {
    "Name" = "tester"
    "Environment" = "dev"
  }
}
variable "filename" {
  type    = string
  default = "confirm_signup.zip"
}

variable "function_name" {
  type    = string
  default = "confirm_signup"
}

variable "lambda_cw_prefix" {
  default = "tf"
  type = string
}

variable "lambda_log_policy_name" {
  default = "lambdalogpolicy"
  type    = string
}

variable "lambda_role_name" {
  default = "lambda_confirmsignup"
  type    = string
}

variable "lambda_handler" {
  type    = string
  default = "lambda_handler"
}

variable "lambda_runtime" {
  type    = string
  default = "python3.10"
  description = "node example: nodejs18.x"
}

variable "lambda_tag_name" {
  default = "confirmsignuplambda"
  type    = string
}

variable "lambda_environment" {
  type    = string
  default = "dev"
}

variable "log_retention_days" {
  default     = 1
  type        = number
  description = "accepted inputs are: 0, 1, 3, 5, 7, 14, 30, 60, 90, ... until 3653"
}

variable "output_path" {
  type    = string
  default = "./output/lambda.zip"
}

variable "source_dir" {
  type    = string
  default = "./py"
}
variable "source_file" {
  default = null
}




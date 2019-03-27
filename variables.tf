variable "filterkey" {}
variable "filtervalue" {}
variable "orchestration" {}
variable "environment" {}

variable "deployment_config_name" {
  default = "CodeDeployDefault.OneAtATime"
}

variable "compute_platform" {
  default = "Server"
}

variable "name" {}

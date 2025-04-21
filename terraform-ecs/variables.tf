variable "aws_region" {
  type        = string
  default     = "ap-southeast-1"
}

variable "project_prefix" {
  type        = string
  default     = "template"
}

variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
}

variable "public1_subnet_cidr" {
  type        = string
  default     = "10.0.1.0/24"
}

variable "public2_subnet_cidr" {
  type        = string
  default     = "10.0.2.0/24"
}

variable "app_name" {
  type        = string
  default     = "template-app"
}

variable "container_port" {
  default = 4000
}

variable "domain" {
  type        = string
  default     = "template.com"
}

variable "subdomain" {
  type        = string
  default     = "app"
}

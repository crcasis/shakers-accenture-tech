variable "bucket_domain_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "comment" {
  type    = string
  default = "CloudFront distribution"
}

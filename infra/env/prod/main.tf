module "s3" {
  source      = "../../modules/s3-static-site"
  bucket_name = var.bucket_name
  environment = "prod"
}

module "cloudfront" {
  source             = "../../modules/cloudfront"
  bucket_domain_name = "${module.s3.bucket_id}.s3.amazonaws.com"
  environment        = "prod"
  comment            = "CloudFront for prod"
}

module "iam" {
  source             = "../../modules/iam"
  bucket_arn         = module.s3.bucket_arn
  cloudfront_oac_id  = module.cloudfront.cloudfront_domain_name
}

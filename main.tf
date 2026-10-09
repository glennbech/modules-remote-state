module "s3_website" {
  source = "./modules/s3-website"

  bucket_name = "glenn-practice-website" # Bytt til noe globalt unikt (f.eks. ditt-navn-pgr301-website)

  tags = {
    Name        = "PGR301 Lab"
    Environment = "Demo"
    ManagedBy   = "Terraform"
  }
}

output "s3_website_url" {
  value       = module.s3_website.website_url
  description = "URL for the S3 hosted website"
}

output "bucket_name" {
  value       = module.s3_website.bucket_name
  description = "Name of the S3 bucket"
}
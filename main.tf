terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.4.6"
}
provider "aws"{
  profile = "ankush"
  region = "us-east-1"
}
variable "bucket_name"{
  default = tfcpmanisha"
  }
variable "codepipeline_artifact_bucket"{
  default = tfcpmanishaartifact"
  }
variable "repo_name"{
  default = "tfcpmanisha"
}
variable "codepipeline_role"{
  default = tfcprole"
  }
 variable "codebuild_role"{
  default = tfcodebuildrole"
  } 
variable "default_vpc"{
  default = "vpc-0e75e1496e26c1af8"
}
resources "aws_s3_bucket" "codepipeline_artifact_bucket" {
  bucket = var.codepipeline_artifact_bucket
  acl = "private"
}
resources "aws_s3_bucket" "codepipeline_bucket" {
  bucket = var.bucket_name
  policy = <<POLICY
  {
    
}


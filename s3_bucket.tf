provider "aws" {

    access_key = "${AKIAYP2AHH4N7SYKRPGF}"

    secret_key = "${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}"

    region = us-west-2

}

module "s3" {

    source = ""terraform-aws-modules/s3-bucket/aws""

    bucket_name = "LMS_S3"       

}

resource "aws_s3_bucket" "LMS_S3" {

    bucket = "${var.bucket_name}" 

    acl = "${var.acl_value}"   

}

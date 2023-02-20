resource "aws_s3_bucket" "bucket" {
  bucket= "${var.prefix}-frontend-001"

  acl = var.acl
  versioning {
    enabled = var.versioning
  }
website {
    index_document = var.index_document
    error_document = var.error_document
  }
}

resource "aws_s3_bucket_policy" "bucket-policy" {
  bucket = aws_s3_bucket.bucket.id
  policy = data.aws_iam_policy_document.bucket-policy.json
}

data "aws_iam_policy_document" "bucket-policy" {
  statement {
    sid = "1"
    
    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.OAI_3.iam_arn]
    }
    
    actions = [
      "s3:GetObject"
    ]

    resources = [
      "${aws_s3_bucket.bucket.arn}/*"
    ]
  }
}
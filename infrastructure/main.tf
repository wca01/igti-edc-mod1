resource "aws_s3_bucket" "datalake" {
    #parametros config do recurso
    bucket = "$(var.base_bucket_name)-$(var.ambiente)-$(var.numero_conta_aws)"
    acl = "private"

    server_side_encryption_configuration {
    rules {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
}
    }
    }
    tags = {
      IES = "IGTI",
      CURSO = "EDC22"
    }
}

resource "aws_s3_object" "codigo_spark" {
  bucket = aws_s3_bucket.datalake.id
  key = "emr-code/pyspark/job_spark_from_tf.py"
  acl = "private"
  source = "./job_spark.py"
  etag = filemd5("./job_spark.py")
}

provider "aws" {
    region = "us-east-2"
  }
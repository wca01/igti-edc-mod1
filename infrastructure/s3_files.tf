resource "aws-s3-bucket-object" "job_spark" {
    bucket = aws-s3-bucket.datalake.id
    key = "emr-code/pyspark/job_spark_from_tf.py"
    acl = "private"
    source = "./job_spark.py"
    etag = filemd5("./job_spark.py")
  }
resource "aws_s3_bucket" "dl" {
    #parametros config do recurso
    bucket = "datalake-igti-edc-tf"
    acl = "private"

    server_side_encryption_configuration {
    rule {
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

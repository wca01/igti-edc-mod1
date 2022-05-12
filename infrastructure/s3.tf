resource "aws_s3_bucket" "datalake" {
    #parametros config do recurso
    bucket = "$(var.base_bucket_name)-$(var.ambiente)-$(var.numero_conta_aws)"
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
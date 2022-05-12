resource "aws-s3-bucket" "datalake" {
    #parametros config do recurso
    bucket = "$(var.base-bucket-name)-$(var.ambiente)-$(var.numero-conta-aws)"
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
#teste
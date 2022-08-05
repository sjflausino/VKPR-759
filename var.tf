variable "aws_access_key_id" {

}
variable "aws_secret_access_key" {

}
variable "caminhoSecret"{
    type = string
    default = local_file.secret.filename
}

resource "local_sensitive_file" "secret" {
    content  = "OPA"
    filename = "${path.module}/secret.txt"
}
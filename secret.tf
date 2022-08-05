resource "local_file" "secret" {
    content  = "OPA"
    filename = "${path.module}/secret.txt"
}


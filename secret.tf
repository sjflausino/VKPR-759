resource "local_file" "secret" {
    content  = "OPA"
    filename = "~/secret.txt"
}


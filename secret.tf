resource "local_file" "secret" {
    content  = "OPA"
    filename = "${path.module}/secret.txt"
}

resource "local_file" "plan" {
    content  = ""
    filename = "${path.module}/plan.txt"
}


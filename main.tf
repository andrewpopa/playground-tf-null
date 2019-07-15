// null provider
provider "null" {}

resource "null_resource" "example"{
  count = 2
  provisioner "local-exec" {
    command = "echo Hello world! ${count.index}"
  }
}

resource "random_pet" "server" {}

output "random_name" {
  value = "${random_pet.server.id}"
}

resource "random_id" "server" {
  byte_length = 8
}

output "random_server" {
  value = "${random_id.server.id}"
}
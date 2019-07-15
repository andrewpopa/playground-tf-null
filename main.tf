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
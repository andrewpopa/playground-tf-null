// null provider
provider "null" {}

module "example" {
  source = "./example"
}

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

output "var_description" {
  value = "${var.description_id}"
}

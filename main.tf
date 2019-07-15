// null provider
provider "null" {}

resource "null_resource" "example"{
  count = 2
}


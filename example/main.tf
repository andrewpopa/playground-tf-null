resource "random_id" "server" {
  byte_length = 8
}

output "random_server" {
  value = "${random_id.server.id}"
}
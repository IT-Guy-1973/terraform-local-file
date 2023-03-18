resource "local_file" "pet" {
  filename        = var.filename
  content         = "My pet name is ${random_pet.mypet.id}"
  file_permission = "0700"
}
resource "random_pet" "mypet" {
  length    = 1
  prefix    = var.prefix[2]
  separator = "."
}
resource "random_pet" "mypet2" {
  length    = 1
  prefix    = var.prefix[0]
  separator = ","
}
output "pet-name" {
  value = random_pet.mypet.id
}

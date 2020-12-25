data "docker_registry_image" "image" {
  name = var.image-name
}
resource "docker_image" "image" {
  name = data.docker_registry_image.image.name
  pull_triggers = [data.docker_registry_image.image.sha256_digest]
}
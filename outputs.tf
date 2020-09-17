output "name" {
 value = kubernetes_secret.docker_config.metadata.0.name
}

output "generation" {
  value = kubernetes_secret.docker_config.metadata.0.generation
}

output "resource_version" {
  value = kubernetes_secret.docker_config.metadata.0.resource_version
}

output "url" {
  value = kubernetes_secret.docker_config.metadata.0.self_link
}

output "uid" {
  value = kubernetes_secret.docker_config.metadata.0.uid
}
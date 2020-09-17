locals {
  auth = var.auth_token != null ? var.auth_token : base64encode("${var.username}:${var.password}")
}

resource "kubernetes_secret" "docker_config" {
  metadata {
    name      = var.name
    namespace = var.namespace
  }

  data = {
    ".dockerconfigjson" = <<DOCKER
{
  "auths": {
    "${var.registry_url}": {
      "auth": "${local.auth}"
    }
  }
}
DOCKER
  }

  type = "kubernetes.io/dockerconfigjson"
}
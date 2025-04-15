resource "helm_release" "argocd" {
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "7.8.24"

  name      = "argocd"
  namespace = "argocd"

  values = [
    file("${path.module}/helm-values.yaml")
  ]
}

output "aks_sp" {
	value = data.azurerm_kubernetes_cluster.aks.identity.0
}

output "kubelet_sp" {
	value = data.azurerm_kubernetes_cluster.aks.kubelet_identity.0
}
data "azurerm_client_config" "current" {}

data "azurerm_key_vault" "tf_kv" {
  name                = "trfrm-kv"
  resource_group_name = "terraform-rg"
}

data "azurerm_kubernetes_cluster" "aks" {
  depends_on          = [azurerm_kubernetes_cluster.aks]
  name                = azurerm_kubernetes_cluster.aks.name
  resource_group_name = azurerm_kubernetes_cluster.aks.resource_group_name
}
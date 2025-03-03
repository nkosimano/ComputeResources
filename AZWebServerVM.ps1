$resourceGroupName = "rg-webapp-uat"
$vmName = "vm-webapp-uat01"
$image = "Win2022Datacenter"
$vmSize = "Standard_B1s"
$publicIpName = "public-ip-webapp-uat"
$adminUsername = "NkosinathiD"
$adminPassword = "MichaelScott25"

az network public-ip create --resource-group $resourceGroupName --name $publicIpName --allocation-method Static

az vm create `
  --resource-group $resourceGroupName `
  --name $vmName `
  --image $image `
  --size $vmSize `
  --public-ip-address $publicIpName `
  --admin-username $adminUsername `
  --admin-password $adminPassword `
  --authentication-type password


echo "Public IP Address: $(az network public-ip show --resource-group $resourceGroupName --name $publicIpName --query ipAddress --output tsv)"
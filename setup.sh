az group create --name GSResource --location brazilsouth

az storage account create --name globalsolutionstorage --resource-group GSResource --location brazilsouth --sku Standard_LRS

az storage container create --account-name globalsolutionstorage --name gscointainer

az cosmosdb create --name gscosmosdb --resource-group GSResource --kind MongoDB --locations regionName=brazilsouth failoverPriority=0 isZoneRedundant=False

az cosmosdb mongodb database create \
--account-name  gscosmosdb \
--name mydatabase \
--resource-group GSResource 

az cosmosdb mongodb collection create --account-name gscosmosdb --database-name mydatabase --name mycollection1 --resource-group GSResource --throughput 400


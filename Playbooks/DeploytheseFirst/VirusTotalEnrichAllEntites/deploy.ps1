Import-Module Az.Resources

$today = Get-Date -Format "MM-dd-yyyy"
$suffix = Get-Random -Maximum 100
$deploySuffix = $today + "_$suffix"

$resourceGroupName = ''
$location = ''

if ($resourceGroupName -eq '') {
    $resourceGroupName = Read-Host -Prompt "Enter the name of the resource group to be created"
}

if ($location -eq '') {
    $location = Read-Host -Prompt "Enter the location (i.e. centralus)"
}

$playbookName = "VirusTotalEnrichAllEntites"
$TemplateFile = "azuredeploy.json"
$ParameterFile = "azuredeploy.parameters.json"
$deploymentName = $playbookName + $deploySuffix

New-AzResourceGroupDeployment -Name $deploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $TemplateFile `
    -TemplateParameterFile $ParameterFile `
    -Verbose
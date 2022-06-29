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

##########################################################################

$emailEnrich = "Playbooks\DeploytheseFirst\Enrich-email-plus"

# get paths to all tempaltes and parameters
# use them to deploy all playbooks

New-AzDeployment -Name $DeploymentName `
    -Location $location `
    -TemplateFile $TemplateFile `
    -TemplateParameterFile $ParameterFile `
    -Verbose
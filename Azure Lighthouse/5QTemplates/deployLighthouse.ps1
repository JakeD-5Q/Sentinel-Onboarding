param(
    [Parameter(Mandatory = $true)]$location
)

$location = 'centralus'
$Resource = 'LightHouse'
$TemplateFile = 'lighthouse.template.json'
$ParameterFile = 'lighthouse.parameters.json'


$today = Get-Date -Format "MM-dd-yyyy"
$suffix = Get-Random -Maximum 100
$deploySuffix = $today + "_$suffix"
$DeploymentName = $deploySuffix + "_$Resource"

New-AzDeployment -Name $DeploymentName `
    -Location $location `
    -TemplateFile $TemplateFile `
    -TemplateParameterFile $ParameterFile `
    -Verbose
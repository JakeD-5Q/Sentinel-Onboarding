$location = 'centralus'
$DeploymentName = 'LightHouse'
$TemplateFile = 'lighthouse.template.json'
$ParameterFile = 'lighthouse.parameters.json'



New-AzDeployment -Name $DeploymentName `
    -Location $location `
    -TemplateFile $TemplateFile `
    -TemplateParameterFile $ParameterFile `
    -Verbose
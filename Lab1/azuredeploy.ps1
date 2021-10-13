$rg = 'arm-demo-gamperl'

New-AzureRmResourceGroupDeployment `
    -Name 'new-storage' `
    -ResourceGroupName $rg `
    -TemplateFile '.\azuredeploy.json' `
    -TemplateParameterFile '.\azuredeploy.paramters.json'

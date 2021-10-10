$rg = 'arm-demo-gamperl'
New-AzureRmResourceGroup -Name $rg -Location northeurope -Force

New-AzureRmResourceGroupDeployment `
    -Name 'new-storage' `
    -ResourceGroupName $rg `
    -TemplateFile '.\azuredeploy.json' `
    -TemplateParameterFile '.\azuredeploy.paramters.json'
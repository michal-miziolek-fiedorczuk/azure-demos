$rg = 'arm-introduction-01'
New-AzResourceGroup -Name $rg -Location northeurope -Force

New-AZResourceGroupDeployment `
    -Name 'new-storage' `
    -ResourceGroupName $rg `
    -TemplateFile '01-storage.json' `
    -storageName 'addemostor03a' `
    -storageSKU 'Standard_GRS'

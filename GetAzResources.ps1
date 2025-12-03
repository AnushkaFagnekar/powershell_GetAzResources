Connect-AzAccount
Set-AzContext -Subscription "Azure for Students"

$rg =  "Powershell_Demo"


$csvPath = "C:\Users\Anushka\Powershell\Results.csv"

#Opens the file at that path (creates the file if it doesn't exist) and writes column names into that CSV "Subscription,ResourceGroup,ResourceName,ResourceType"

Add-Content -Path $csvPath -Value "Subscription,ResourceGroup,ResourceName,ResourceType"

$resources = Get-AzResource -ResourceGroupName $rg
foreach ($res in $resources) {
    Add-Content -Path $csvPath -Value ("{0},{1},{2},{3}" -f "Azure for Students", $rg, $res.Name, $res.ResourceType)
}




    Connect-AzAccount -Subscription "subs name"
    
    $roleAssignmentData = @()
    
    $resourceGroups = Get-AzResourceGroup
    
    foreach ($resourceGroup in $resourceGroups) {
        $resourceGroupName = $resourceGroup.ResourceGroupName
        
        # Get all role assignments for the current resource group
        $roleAssignments = Get-AzRoleAssignment -ResourceGroupName $resourceGroupName
        
        # Iterate through each role assignment
        foreach ($roleAssignment in $roleAssignments) {
            $roleAssignmentData += [PSCustomObject]@{
                "ResourceGroupName" = $resourceGroupName
                "PrincipalName" = $roleAssignment.DisplayName
                "RoleName" = $roleAssignment.RoleDefinitionName
            }
        } 
    }
    
    $roleAssignmentData | Export-Csv -Path "C:\ResourceGroups-Roles-Subscription.csv" -NoTypeInformation

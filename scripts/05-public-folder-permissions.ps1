# Behörigheter per avdelning via globala grupper
# Nya medarbetare får åtkomst genom att läggas i rätt grupp, inte en och en.

Add-PublicFolderClientPermission -Identity "\Sales"   -User "GG_Sales"     -AccessRights PublishingEditor
Add-PublicFolderClientPermission -Identity "\IT"      -User "GG_IT"        -AccessRights PublishingEditor
Add-PublicFolderClientPermission -Identity "\Finance" -User "GG_Finance"   -AccessRights PublishingEditor
Add-PublicFolderClientPermission -Identity "\Marknad" -User "GG_Marketing" -AccessRights PublishingEditor
Add-PublicFolderClientPermission -Identity "\Lager"   -User "GG_Warehouse" -AccessRights PublishingEditor
Add-PublicFolderClientPermission -Identity "\Service" -User "GG_Janitor"   -AccessRights PublishingEditor

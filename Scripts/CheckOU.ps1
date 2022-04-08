$OU = "OU=Users,OU=Archived or Disabled,*"

Search-ADAccount -AccountDisabled -UsersOnly | Move-ADObject -TargetPath $OU -whatif

//Search-ADAccount –AccountDisabled –UsersOnly –SearchBase "DC=Comp,DC=Any" | Where-Object {$_.distinguishedname -notlike "*,OU=ExcludeThis,*"} | Move-ADObject –TargetPath "OU=Disabled Accounts,DC=Comp,DC=Any"

//Instead of moving, make it grab the users as an array, store in variable. Check both users in Archived and Disabled and check for enabled users in disabled OU.

new change +
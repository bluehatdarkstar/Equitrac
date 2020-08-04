#region script global variables

    #get the root directory to move files
    $rootFolder = "C:\Scripts\Equitrac\files\"
    $destinFolder = "C:\Scripts\Equitrac\moved\"
    $maxNumFiles = 4
    
    $keyFile1 = "769784389b54ec04231fc1a7fe448cb3_81bacc29-5393-45aa-bc4d-64a41c646879"
    $keyFile2 = "6b45d390af5d329df6567fcb550d85a6_81bacc29-5393-45aa-bc4d-64a41c646879"

    $cdDir = "cd $rootFolder"
    $listFiles =  Get-ChildItem | % { $_.DirectoryName + "\$_" } | Select -First $maxNumFiles
    $split = Split-Path -Path $listFiles -leaf

#endregion

#region select files and copy to destination

    invoke-expression $cdDir
    Copy-Item $split -Destination $destinFolder

    foreach ($file in $split){
    if (!($file -eq $keyfile1 -or $file -eq $keyfile2)) {
    Remove-Item $file -force
        }
    }

#endRegion
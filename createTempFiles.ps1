#get the list of source directories in the original folder
$rootFolder = "C:\Scripts\Equitrac\files\"

#create .txt files in source dirs
for ($i=0; $i -lt 50; $i++)
	{
		$date = Get-Date
		$date = $date.ToString("yyyy-MM-dd-hh-mm-ss")
		fsutil file createnew "$rootFolder\$date-$i" 3096
	}

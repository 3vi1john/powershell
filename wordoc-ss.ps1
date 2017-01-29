
$SearchText = "[0-9]{3}[-| ][0-9]{2}[-| ][0-9]{4}"
$wd = New-Object -ComObject Word.Application
$wd.Visible = $false

foreach ( $file in $filesearch ) {
    $doc = $wd.Documents.Open("$file")
    $doc.Paragraphs | ForEach-Object {
    Write-Host $file : $_.Range.Text | Where-Object { $_ -match $SearchText } 
  }
  $wd.Quit();

Invoke-Webrequest -Uri http://malwaredomains.lehigh.edu/files/justdomains -UserAgent "User-Agent: BOT/0.1 (BOT for JCE)" -Outfile "justdomains.txt"
$getmalware = Get-Content "justdomains.txt"
foreach ($maldomain in $getmalware ) {
    Invoke-command { nslookup $maldomain 8.8.4.4 } 
}
 

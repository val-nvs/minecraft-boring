Write-Host "Processing mcfunctionraw files..."
Write-Host ""

# Create function directory if it doesn't exist
if (-not (Test-Path "function")) {
    New-Item -ItemType Directory -Path "function" | Out-Null
}

# Process each .mcfunctionraw file in function-master
Get-ChildItem "function-master" -Filter *.mcfunctionraw | ForEach-Object {
    $inputFile = $_.FullName
    # Force output extension to .mcfunction
    $outputFile = Join-Path "function" ($_.BaseName + ".mcfunction")

    Write-Host "Processing $($_.Name)"

    # Read all lines, remove tabs, ignore empty lines
    $lines = Get-Content $inputFile -Encoding UTF8 | ForEach-Object {
        $_ -replace "`t", ""   # remove tabs, preserve spaces
    } | Where-Object { $_ -ne "" }  # ignore empty lines

    # Combine lines: append normally
    # Lines starting with '!' start a new line and remove '!'
    # Lines starting with '#' start a new line but KEEP the '#'
    $result = ""
    foreach ($line in $lines) {
        if ($line.StartsWith("!")) {
            # New line for '!' lines, remove the leading '!'
            $result += "`r`n" + $line.Substring(1)
        } elseif ($line.StartsWith("#")) {
            # New line for '#' lines, keep the '#'
            $result += "`r`n" + $line
        } else {
            # Append directly, no extra space added
            $result += $line
        }
    }

    # Trim only leading/trailing newlines (not spaces)
    $result = $result.Trim("`r", "`n")

    # Save to output WITHOUT BOM
    [System.IO.File]::WriteAllText($outputFile, $result, [System.Text.UTF8Encoding]::new($false))
}

Write-Host ""
Write-Host "Done! Updated files in 'function' folder."

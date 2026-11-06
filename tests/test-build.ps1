Write-Host "Starting automated tests..."

$resultFile = ".\output\build-result.txt"

if (!(Test-Path $resultFile)) {
    Write-Error "Build artifact not found!"
    exit 1
}

$content = Get-Content $resultFile -Raw

if ($content -notmatch "Build completed successfully") {
    Write-Error "Build validation failed!"
    exit 1
}

Write-Host "All tests passed!"
exit 0
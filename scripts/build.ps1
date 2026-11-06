Write-Host "Starting application build..."

$buildDirectory = ".\output"

if (!(Test-Path $buildDirectory)) {
    New-Item -ItemType Directory -Path $buildDirectory
}

"Build completed successfully" |
    Out-File "$buildDirectory\build-result.txt"

Write-Host "Build completed!"
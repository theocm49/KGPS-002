# Execute este script na pasta raiz do seu projeto Flutter.
$ErrorActionPreference = "Stop"
$source = Join-Path $PSScriptRoot "KGPS-002"
if (!(Test-Path (Join-Path $source "lib\main.dart"))) {
    throw "Pasta KGPS-002 não encontrada ao lado deste script."
}
Copy-Item (Join-Path $source "lib") (Get-Location).Path -Recurse -Force
Copy-Item (Join-Path $source "pubspec.yaml") (Get-Location).Path -Force
Write-Host "Arquivos copiados. Agora execute: flutter pub get"

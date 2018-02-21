[CmdletBinding()]
Param(
    $SqlServer = (Read-Host -prompt "SQL Server ((local)\SQL2016)"),
    $SqlDb= (Read-Host -prompt "SQL DB (TestFluent)")
)
if (!$SqlServer) { $SqlServer = "(local)\SQL2016" }
if (!$SqlDb) { $SqlDb = "TestFluent" }
$conn = '"Data Source=' + $SqlServer + ';Initial Catalog=' + $SqlDb + ';Integrated Security=True;MultipleActiveResultSets=True;Connection Timeout=30;"'
Write-Host ""
Write-Host "Connection string is:" $conn
Write-Host ""
Write-Host "Downloading FluentMigrator from NuGet..."
$nugetexe = Start-Process -NoNewWindow -FilePath "$env:nuget" -ArgumentList "restore -PackagesDirectory . -Source https://www.myget.org/F/eloekset-netstandard/api/v3/index.json" -Wait
Write-Host ""
$migrateexepath = ".\FluentMigrator.Tools.2.0.2-preview\tools\win10-x64\Migrate.exe"
$migrateexe = Start-Process -NoNewWindow -FilePath $migrateexepath -ArgumentList "-a ..\TestMigrations\bin\Debug\netstandard2.0\TestMigrations.dll -db SqlServer2014 -conn $conn -task migrate" -Wait
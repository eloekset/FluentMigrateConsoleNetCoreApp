# FluentMigrateConsoleNetCoreApp
Test repo to use NuGet to download migrate.exe and run migrations for .NET Standard 2.0

Sample app to run an unofficial preview of FluentMigrator for .NET Standard 2.0 with a console runner built for .NET Core 2.0 and win10-x64 only.

Steps to test this sample:
1. Clone repository
2. Build TestMigrations.sln
3. Run PowerShell script at ./.fluentmigrator/migrate.ps1

It should download the FluentMigrator.Tools preview NuGet package from an unofficial NuGet source and execute the console runner with some default parameters to a test DB.

Only SQL Server is supported so far.
![Screenshot](https://github.com/eloekset/FluentMigrateConsoleNetCoreApp/raw/master/screenshot1.png)

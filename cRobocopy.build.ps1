<#
.Synopsis
	Build script (https://github.com/nightroman/Invoke-Build)
#>
PARAM (
    $VersionType = 'Patch',
    $m
)

Set-BuildEnvironment -Force

task . ExportCrescendoModule,Test,UpdateHelp

task ExportCrescendoModule {
    Export-CrescendoModule -ConfigurationFile $env:BHPSModulePath\crobocopy.crescendo.json -ModuleName cRobocopy.psm1 -Force
}

task Test {
    $Result = Invoke-Pester $env:BHPSModulePath\tests -PassThru
    if ($Result.FailedCount -gt 0) {
        throw 'Pester tests failed'
    }
}

task UpdateHelp {
    Import-Module $env:BHPSModulePath\cRobocopy -Force
    New-MarkdownHelp -Module cRobocopy -OutputFolder $env:BHPSModulePath\docs -force
    New-ExternalHelp -Path $env:BHPSModulePath\docs -OutputPath $env:BHPSModulePath\en-US -Force
}


Task UpdateModuleVersion {

    [version]$version = Get-Metadata -Path $env:BHPSModuleManifest -PropertyName 'ModuleVersion'
    $NewVersion = [version] (Step-Version -Version $version -Type $VersionType)

    "  Setting version [$NewVersion]"
    Update-Metadata -Path $env:BHPSModuleManifest -PropertyName 'ModuleVersion' -Value $NewVersion

    (Get-Content -Path $env:BHPSModuleManifest -Raw -Encoding UTF8) |
    ForEach-Object { $_.TrimEnd() } |
    Set-Content -Path $env:BHPSModuleManifest -Encoding UTF8
}

Task push {
    git add .
    git commit -a -m $m
    git push
}
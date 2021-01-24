Describe 'Module Tests' {
    It 'Passes Test-ModuleManifest' {
        Test-ModuleManifest -Path $env:BHPSModulePath\cRobocopy.psd1 | Should -Not -BeNullOrEmpty
        $? | Should -Be $true
    }

    It 'Passes Import-Module' {
        $result = Import-Module $env:BHPSModulePath\cRobocopy.psm1 -Force -PassThru
        $result | Should -Not -BeNullOrEmpty
    }
}

Import-Module $env:BHPSModulePath\cRobocopy.psm1 -Force | out-null
# Filter out parameters where an alias was not doable
$Parameters = ((get-content $env:BHPSModulePath\cRobocopy.crescendo.json |
    ConvertFrom-Json).Parameters).Where{$_.OriginalName -and $_.Name -ne "AddAttribute" -and $_.Name -ne "RemoveAttribute" -and $_.Name -ne "LowFreeSpaceModeFloorSize"}

Describe "Parameter Validation" {
    It "<_.Name> parameter either is OriginalName or has an alias based on OriginalName" -ForEach $Parameters {
        $result = ($_.OriginalName.Replace("/","").Replace(":","") -in $_.Aliases) -or ($_.OriginalName.Replace("/","").Replace(":","") -in $_.Name)
        $result | Should -Be $true
    }
}


Describe 'JSON Tests' {
    It 'Is a valid JSON file' {
        $result = Get-Content $env:BHPSModulePath\cRobocopy.crescendo.json -Raw | test-json
        $result | Should -be $true
    }
}
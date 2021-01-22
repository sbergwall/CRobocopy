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

Describe 'Parameter Tests' {
    Import-Module $env:BHPSModulePath\cRobocopy.psm1 -Force | out-null
    # Filter away empty OriginalName
    $Parameters = ((get-content $env:BHPSModulePath\cRobocopy.crescendo.json | ConvertFrom-Json).Parameters).where{$_.OriginalName}
    foreach ($Parameter in $Parameters) {
        it 'Aliases contains Originalname: $($Parameter.OriginalName)' {
                $Parameter.OriginalName.Replace("/","") -in $Parameter.Aliases | Should -Be $true
        }
    }
}

Describe 'JSON Tests' {
    It 'Is a valid JSON file' {
        $result = Get-Content $env:BHPSModulePath\cRobocopy.crescendo.json -Raw | test-json
        $result | Should -be $true
    }
}
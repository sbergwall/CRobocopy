Describe 'Module Manifest Tests' {
    It 'Passes Test-ModuleManifest' {
        Test-ModuleManifest -Path $env:BHPSModulePath\cRobocopy.psd1 | Should -Not -BeNullOrEmpty
        $? | Should -Be $true
    }
}

Describe 'Module Import Test' {
    It 'Passes Import-Module' {
        $result = Import-Module $env:BHPSModulePath\cRobocopy.psm1 -Force -PassThru
        $result | Should -Not -BeNullOrEmpty
    }
}
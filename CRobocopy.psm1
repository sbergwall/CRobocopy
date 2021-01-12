# Module created by Microsoft.PowerShell.Crescendo
Function Start-Robocopy
{
[CmdletBinding()]

param(
[Alias('Path')]
[Parameter(Position=0,Mandatory=$true)]
[string]$Source,
[Alias('Target')]
[Parameter(Position=1,Mandatory=$true)]
[string]$Destination,
[Parameter(Position=2)]
[string]$Files = "*.*",
[Alias('s')]
[Parameter(ParameterSetName='IncludeSubDirectories')]
[switch]$IncludeSubDirectories,
[Alias('e','Recurse')]
[Parameter(ParameterSetName='IncludeEmptySubDirectories')]
[switch]$IncludeEmptySubDirectories,
[Alias('lev','Depth')]
[Parameter()]
[int]$Level,
[Alias('z')]
[Parameter()]
[switch]$RestartMode,
[Alias('b')]
[Parameter()]
[switch]$BackupMode,
[Alias('zb')]
[Parameter()]
[switch]$RestartBackupMode,
[Parameter()]
[switch]$EFSRAW,
[ValidateSet('d','a','t','x','s','o','u')]
[Alias('COPY')]
[Parameter()]
[string]$CopyFlags,
[Parameter()]
[switch]$SEC,
[Parameter()]
[switch]$COPYALL,
[Parameter()]
[switch]$NoCopy
    )

BEGIN {
    $__PARAMETERMAP = @{
        Source = @{ OriginalName = ''; OriginalPosition = '0'; Position = '0'; ParameterType = [string]; NoGap = $False }
        Destination = @{ OriginalName = ''; OriginalPosition = '0'; Position = '1'; ParameterType = [string]; NoGap = $False }
        Files = @{ OriginalName = ''; OriginalPosition = '0'; Position = '2'; ParameterType = [string]; NoGap = $True }
        IncludeSubDirectories = @{ OriginalName = '/s'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        IncludeEmptySubDirectories = @{ OriginalName = '/e'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        Level = @{ OriginalName = '/lev:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        RestartMode = @{ OriginalName = '/z'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        BackupMode = @{ OriginalName = '/b'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        RestartBackupMode = @{ OriginalName = '/zb'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        EFSRAW = @{ OriginalName = '/EFSRAW'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        CopyFlags = @{ OriginalName = '/COPY:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        SEC = @{ OriginalName = '/SEC'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        COPYALL = @{ OriginalName = '/COPYALL'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        NoCopy = @{ OriginalName = '/NOCOPY'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
    }

    $__outputHandlers = @{ Default = @{ StreamOutput = $true; Handler = { $input } } }
}
PROCESS {
    $__commandArgs = @()
    $__boundparms = $PSBoundParameters
    $MyInvocation.MyCommand.Parameters.Values.Where({$_.SwitchParameter -and $_.Name -notmatch "Debug|Whatif|Confirm|Verbose" -and ! $PSBoundParameters[$_.Name]}).ForEach({$PSBoundParameters[$_.Name] = [switch]::new($false)})
    if ($PSBoundParameters["Debug"]){wait-debugger}
    foreach ($paramName in $PSBoundParameters.Keys|Sort-Object {$__PARAMETERMAP[$_].OriginalPosition}) {
        $value = $PSBoundParameters[$paramName]
        $param = $__PARAMETERMAP[$paramName]
        if ($param) {
            if ( $value -is [switch] ) { $__commandArgs += if ( $value.IsPresent ) { $param.OriginalName } else { $param.DefaultMissingValue } }
            elseif ( $param.NoGap ) { $__commandArgs += "{0}""{1}""" -f $param.OriginalName, $value }
            else { $__commandArgs += $param.OriginalName; $__commandArgs += $value |Foreach-Object {$_}}
        }
    }
    $__commandArgs = $__commandArgs|Where-Object {$_}
    if ($PSBoundParameters["Debug"]){wait-debugger}
    if ( $PSBoundParameters["Verbose"]) {
         Write-Verbose -Verbose -Message C:/windows/system32/robocopy.exe
         $__commandArgs | Write-Verbose -Verbose
    }
    $__handlerInfo = $__outputHandlers[$PSCmdlet.ParameterSetName]
    if (! $__handlerInfo ) {
        $__handlerInfo = $__outputHandlers["Default"] # Guaranteed to be present
    }
    $__handler = $__handlerInfo.Handler
    if ( $PSCmdlet.ShouldProcess("C:/windows/system32/robocopy.exe")) {
        if ( $__handlerInfo.StreamOutput ) {
            & "C:/windows/system32/robocopy.exe" $__commandArgs | & $__handler
        }
        else {
            $result = & "C:/windows/system32/robocopy.exe" $__commandArgs
            & $__handler $result
        }
    }
  } # end PROCESS

<#
.SYNOPSIS
Run Robocopy.exe with native PowerShell Support.

.DESCRIPTION
See https://technet.microsoft.com/en-us/library/cc733145(v=ws.11).aspx for an extensive documentation on Robocopy switches.

.PARAMETER Source



.PARAMETER Destination



.PARAMETER Files



.PARAMETER IncludeSubDirectories



.PARAMETER IncludeEmptySubDirectories



.PARAMETER Level



.PARAMETER RestartMode



.PARAMETER BackupMode



.PARAMETER RestartBackupMode



.PARAMETER EFSRAW



.PARAMETER CopyFlags



.PARAMETER SEC



.PARAMETER COPYALL



.PARAMETER NoCopy




#>
}

Export-ModuleMember -Function Start-Robocopy

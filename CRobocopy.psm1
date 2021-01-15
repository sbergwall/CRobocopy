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
[Alias('j')]
[Parameter()]
[switch]$UnbufferedIOMode,
[Parameter()]
[switch]$EFSRAW,
[ValidateSet('d','a','t','x','s','o','u')]
[Alias('COPY')]
[Parameter()]
[string]$CopyFlags,
[ValidateSet('d','a','t')]
[Alias('DCOPY')]
[Parameter()]
[string]$DCopyFlags,
[Parameter()]
[switch]$SEC,
[Parameter()]
[switch]$COPYALL,
[Parameter()]
[switch]$NoCopy,
[Parameter()]
[switch]$SecFix,
[Parameter()]
[switch]$TimFix,
[Parameter()]
[switch]$Purge,
[Parameter()]
[switch]$Mirror,
[Parameter()]
[switch]$Mov,
[Parameter()]
[switch]$Move,
[ValidateSet('R','A','S','H','C','N','E','T')]
[Parameter()]
[string]$AddAttribute,
[ValidateSet('R','A','S','H','C','N','E','T')]
[Parameter()]
[string]$RemoveAttribute
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
        UnbufferedIOMode = @{ OriginalName = '/j'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        EFSRAW = @{ OriginalName = '/EFSRAW'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        CopyFlags = @{ OriginalName = '/COPY:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        DCopyFlags = @{ OriginalName = '/DCOPY:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        SEC = @{ OriginalName = '/SEC'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        COPYALL = @{ OriginalName = '/COPYALL'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        NoCopy = @{ OriginalName = '/NOCOPY'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        SecFix = @{ OriginalName = '/secfix'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        TimFix = @{ OriginalName = '/timfix'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        Purge = @{ OriginalName = '/purge'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        Mirror = @{ OriginalName = '/mir'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        Mov = @{ OriginalName = '/mov'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        Move = @{ OriginalName = '/move'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        AddAttribute = @{ OriginalName = '/a+'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $False }
        RemoveAttribute = @{ OriginalName = '/a-:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $False }
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
Robocopy.exe with Powershell

.PARAMETER Source
Source Directory (drive:\path or \\server\share\path).


.PARAMETER Destination
Destination Dir (drive:\path or \\server\share\path).


.PARAMETER Files
File(s) to copy  (names/wildcards: default is '*.*'').


.PARAMETER IncludeSubDirectories
copy Subdirectories, but not empty ones.


.PARAMETER IncludeEmptySubDirectories
copy subdirectories, including Empty ones.


.PARAMETER Level
only copy the top n LEVels of the source directory tree.


.PARAMETER RestartMode
copy files in restartable mode.


.PARAMETER BackupMode
copy files in Backup mode.


.PARAMETER RestartBackupMode
use restartable mode; if access denied use Backup mode.


.PARAMETER UnbufferedIOMode
copy using unbuffered I/O (recommended for large files).


.PARAMETER EFSRAW
copy all encrypted files in EFS RAW mode.


.PARAMETER CopyFlags
What to COPY for files (default is /COPY:DAT). (copyflags : D=Data, A=Attributes, T=Timestamps, X=Skip alt data streams). (S=Security=NTFS ACLs, O=Owner info, U=aUditing info).


.PARAMETER DCopyFlags
What to COPY for files (default is /COPY:DA). (copyflags : D=Data, A=Attributes, T=Timestamps).


.PARAMETER SEC
copy files with SECurity (equivalent to /COPY:DATS).


.PARAMETER COPYALL
COPY ALL file info (equivalent to /COPY:DATSOU).


.PARAMETER NoCopy
COPY NO file info (useful with /PURGE).


.PARAMETER SecFix
FIX file SECurity on all files, even skipped files.


.PARAMETER TimFix
FIX file TIMes on all files, even skipped files.


.PARAMETER Purge
delete dest files/dirs that no longer exist in source.


.PARAMETER Mirror
MIRror a directory tree (equivalent to /E plus /PURGE).


.PARAMETER Mov
MOVe files (delete from source after copying).


.PARAMETER Move
MOVE files AND dirs (delete from source after copying).


.PARAMETER AddAttribute
Add the given Attributes to copied files. R = Read only, A = Archive, S = System, H = Hidden, C = Compressed, N = Not content indexed,E = Encrypted, T = Temporary


.PARAMETER RemoveAttribute
Remove the given Attributes from copied files. R = Read only, A = Archive, S = System, H = Hidden, C = Compressed, N = Not content indexed,E = Encrypted, T = Temporary



.EXAMPLE
PS> PS C:\> Start-Robocopy -Source C:\tmp\from -Destination C:\tmp\to 

Run Robocopy.exe with source 'C:\tmp\from' to destination 'C:\tmp\to'
Original Command: robocopy.exe 'C:\tmp\from' 'C:\tmp\to'


.LINK
https://technet.microsoft.com/en-us/library/cc733145(v=ws.11).aspx

#>
}

Export-ModuleMember -Function Start-Robocopy

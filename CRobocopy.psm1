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
[string[]]$Files = "*.*",
[Alias('s')]
[Parameter()]
[switch]$IncludeSubDirectories,
[Alias('e','Recurse')]
[Parameter()]
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
[ValidatePattern('[datxsou]')]
[Alias('COPY')]
[Parameter()]
[string]$CopyFlags = "DAT",
[ValidatePattern('[dat]')]
[Alias('DCOPY')]
[Parameter()]
[string]$DCopyFlags = "DA",
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
[Alias('Sync','mir')]
[Parameter()]
[switch]$Mirror,
[Parameter()]
[switch]$Mov,
[Parameter()]
[switch]$Move,
[ValidatePattern('[RASHCNET]')]
[Parameter()]
[string]$AddAttribute,
[ValidatePattern('[RASHCNET]')]
[Parameter()]
[string]$RemoveAttribute,
[Parameter()]
[switch]$Create,
[Parameter()]
[switch]$FAT,
[Alias('256')]
[Parameter()]
[switch]$IgnoreLongPath,
[Alias('MON')]
[Parameter()]
[int]$MonitorChange,
[Alias('MOT')]
[Parameter()]
[int]$MonitorTime,
[ValidatePattern('[0-2]{1}[0-3]{1}[0-5]{1}[0-9]{1}-[0-2]{1}[0-3]{1}[0-5]{1}[0-9]{1}')]
[Alias('rh')]
[Parameter()]
[string]$RunHours,
[Alias('pf')]
[Parameter()]
[switch]$UsePerFileRunTimes,
[Alias('ipg')]
[Parameter()]
[int]$InterPacketGap,
[Alias('sj')]
[Parameter()]
[switch]$Junctions,
[Alias('sl')]
[Parameter()]
[switch]$SymbolicLink,
[ValidateRange(1,128)]
[Alias('MT')]
[Parameter()]
[int]$MultiThread = "8",
[Parameter()]
[switch]$NoDCopy,
[Parameter()]
[switch]$NoOffload,
[Parameter()]
[switch]$Compress,
[Alias('a')]
[Parameter()]
[switch]$ArchiveOnly,
[Alias('m')]
[Parameter()]
[switch]$ArchiveOnlyWithReset,
[ValidatePattern('[RASCHNETO]')]
[Alias('ia')]
[Parameter()]
[string]$IncludeAttribute,
[ValidatePattern('[RASCHNETO]')]
[Alias('xa')]
[Parameter()]
[string]$ExcludeAttribute,
[Alias('xf')]
[Parameter()]
[string]$ExcludeFileName,
[Alias('xd')]
[Parameter()]
[string]$ExcludeDirectory,
[Alias('xc')]
[Parameter()]
[switch]$ExcludeChangedFiles,
[Alias('xn')]
[Parameter()]
[switch]$ExcludeNewerFiles,
[Alias('xo')]
[Parameter()]
[switch]$eXcludeOlderFiles,
[Alias('XX')]
[Parameter()]
[switch]$ExcludeExtraFilesDirectories,
[Alias('xl')]
[Parameter()]
[switch]$ExcludeLonelyFiles,
[Alias('is')]
[Parameter()]
[switch]$IncludeSameFiles,
[Alias('it')]
[Parameter()]
[switch]$IncludeTweakedFiles,
[Alias('max')]
[Parameter()]
[int]$MaximumFileSize,
[Alias('min')]
[Parameter()]
[int]$MinimumFileSize,
[Alias('maxage')]
[Parameter()]
[string]$MaximumFileAge,
[Alias('minage')]
[Parameter()]
[string]$MinimumFileAge,
[ValidatePattern('(?<!\d)(?:(?:(?:1[6-9]|[2-9]\d)?\d{2})(?:(?:(?:0[13578]|1[02])31)|(?:(?:0[1,3-9]|1[0-2])(?:29|30)))|(?:(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))0229)|(?:(?:1[6-9]|[2-9]\d)?\d{2})(?:(?:0?[1-9])|(?:1[0-2]))(?:0?[1-9]|1\d|2[0-8]))(?!\d)')]
[Alias('maxlad')]
[Parameter()]
[string]$MaximumFileLastAccessDate,
[ValidatePattern('(?<!\d)(?:(?:(?:1[6-9]|[2-9]\d)?\d{2})(?:(?:(?:0[13578]|1[02])31)|(?:(?:0[1,3-9]|1[0-2])(?:29|30)))|(?:(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))0229)|(?:(?:1[6-9]|[2-9]\d)?\d{2})(?:(?:0?[1-9])|(?:1[0-2]))(?:0?[1-9]|1\d|2[0-8]))(?!\d)')]
[Alias('minlad')]
[Parameter()]
[string]$MinimumFileLastAccessDate,
[Alias('fft')]
[Parameter()]
[switch]$AssumeFATFileTime,
[Alias('dst')]
[Parameter()]
[switch]$CompensateDST,
[Alias('xj')]
[Parameter()]
[switch]$ExcludeJunctionPoints,
[Alias('xjd')]
[Parameter()]
[switch]$ExcludeDirectoryJunctionPoints,
[Alias('xjf')]
[Parameter()]
[switch]$ExcludeFileJunctionPoints,
[Alias('IM')]
[Parameter()]
[switch]$IncludeModifiedFiles,
[Alias('r')]
[Parameter()]
[int]$Retry = "3",
[Alias('w')]
[Parameter()]
[int]$Wait  = "3",
[Alias('reg')]
[Parameter()]
[int]$SaveRetrySettings  = "3",
[Alias('tbd')]
[Parameter()]
[switch]$WaitForShareName ,
[Alias('LFSM')]
[Parameter()]
[switch]$LowFreeSpaceMode,
[ValidatePattern('\d+G|\d+M|\d+K')]
[Alias('LFSMFloorSize')]
[Parameter()]
[string]$LowFreeSpaceModeFloorSize,
[Alias('l')]
[Parameter()]
[switch]$List,
[Alias('x')]
[Parameter()]
[switch]$ReportExtraFile ,
[Alias('V')]
[Parameter()]
[switch]$RobocopyVerbose ,
[Alias('ts')]
[Parameter()]
[switch]$ReportSourceFileTimeStamp,
[Alias('FP')]
[Parameter()]
[switch]$ReportFullPath,
[Alias('bytes')]
[Parameter()]
[switch]$ReportSizeAsBytes,
[Alias('ns')]
[Parameter()]
[switch]$ReportNoSize,
[Alias('nc')]
[Parameter()]
[switch]$ReportNoClass,
[Alias('NFL')]
[Parameter()]
[switch]$ReportNoFileName,
[Alias('NDL')]
[Parameter()]
[switch]$ReportNoDirectoryName,
[Alias('NP')]
[Parameter()]
[switch]$NoProgress,
[Alias('ETA')]
[Parameter()]
[switch]$EstimatedTimeOfArrival,
[Alias('LOG')]
[Parameter()]
[string]$LogFilePath,
[Alias('LogAppend')]
[Parameter()]
[string]$LogFilePathAppend,
[Alias('UNILOG')]
[Parameter()]
[string]$LogFilePathUnicode,
[Alias('UnilogAppend')]
[Parameter()]
[string]$LogFilePathUnicodeAppend,
[Parameter()]
[switch]$Tee,
[Alias('NJH')]
[Parameter()]
[switch]$NoJobHeader,
[Alias('NJS')]
[Parameter()]
[switch]$NoJobSummary,
[Alias('UNICODE')]
[Parameter()]
[switch]$UnicodeStatus,
[Alias('job')]
[Parameter()]
[string]$JobName,
[Alias('save')]
[Parameter()]
[string]$SaveJobName,
[Alias('quit')]
[Parameter()]
[switch]$QuitAfterProcessing,
[Alias('NoSD')]
[Parameter()]
[switch]$NoSourceDirectory,
[Alias('NoDD')]
[Parameter()]
[switch]$NoDestinationDirectory,
[Alias('If')]
[Parameter()]
[string]$IncludeFile
    )

BEGIN {
    $__PARAMETERMAP = @{
        Source = @{ OriginalName = ''; OriginalPosition = '0'; Position = '0'; ParameterType = [string]; NoGap = $False }
        Destination = @{ OriginalName = ''; OriginalPosition = '0'; Position = '1'; ParameterType = [string]; NoGap = $False }
        Files = @{ OriginalName = ''; OriginalPosition = '0'; Position = '2'; ParameterType = [string[]]; NoGap = $False }
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
        AddAttribute = @{ OriginalName = '/a+:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        RemoveAttribute = @{ OriginalName = '/a-:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        Create = @{ OriginalName = '/Create'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        FAT = @{ OriginalName = '/FAT'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        IgnoreLongPath = @{ OriginalName = '/256'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        MonitorChange = @{ OriginalName = '/MON:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        MonitorTime = @{ OriginalName = '/mot:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        RunHours = @{ OriginalName = '/rh:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        UsePerFileRunTimes = @{ OriginalName = '/pf:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        InterPacketGap = @{ OriginalName = '/ipg:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        Junctions = @{ OriginalName = '/sj'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        SymbolicLink = @{ OriginalName = '/sl'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        MultiThread = @{ OriginalName = '/MT:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        NoDCopy = @{ OriginalName = '/NODCOPY:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        NoOffload = @{ OriginalName = '/NOOFFLOAD'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        Compress = @{ OriginalName = '/COMPRESS'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ArchiveOnly = @{ OriginalName = '/a'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ArchiveOnlyWithReset = @{ OriginalName = '/m'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        IncludeAttribute = @{ OriginalName = '/ia:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        ExcludeAttribute = @{ OriginalName = '/xa:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        ExcludeFileName = @{ OriginalName = '/xf'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $False }
        ExcludeDirectory = @{ OriginalName = '/xd'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $False }
        ExcludeChangedFiles = @{ OriginalName = '/xc'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ExcludeNewerFiles = @{ OriginalName = '/xn'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        eXcludeOlderFiles = @{ OriginalName = '/xo'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ExcludeExtraFilesDirectories = @{ OriginalName = '/XX'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ExcludeLonelyFiles = @{ OriginalName = '/xl'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        IncludeSameFiles = @{ OriginalName = '/is'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        IncludeTweakedFiles = @{ OriginalName = '/it:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        MaximumFileSize = @{ OriginalName = '/max:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        MinimumFileSize = @{ OriginalName = '/min:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        MaximumFileAge = @{ OriginalName = '/maxage:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        MinimumFileAge = @{ OriginalName = '/minage:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        MaximumFileLastAccessDate = @{ OriginalName = '/maxlad:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        MinimumFileLastAccessDate = @{ OriginalName = '/minlad:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        AssumeFATFileTime = @{ OriginalName = '/fft'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        CompensateDST = @{ OriginalName = '/dst:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ExcludeJunctionPoints = @{ OriginalName = '/xj'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ExcludeDirectoryJunctionPoints = @{ OriginalName = '/xjd'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ExcludeFileJunctionPoints = @{ OriginalName = '/xjf'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        IncludeModifiedFiles = @{ OriginalName = '/IM'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        Retry = @{ OriginalName = '/r:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        Wait  = @{ OriginalName = '/w:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        SaveRetrySettings  = @{ OriginalName = '/reg:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        WaitForShareName  = @{ OriginalName = '/tbd'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        LowFreeSpaceMode = @{ OriginalName = '/LFSM'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        LowFreeSpaceModeFloorSize = @{ OriginalName = '/LFSM:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        List = @{ OriginalName = '/l'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ReportExtraFile  = @{ OriginalName = '/x'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        RobocopyVerbose  = @{ OriginalName = '/V'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ReportSourceFileTimeStamp = @{ OriginalName = '/ts'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ReportFullPath = @{ OriginalName = '/fp'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ReportSizeAsBytes = @{ OriginalName = '/bytes'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ReportNoSize = @{ OriginalName = '/ns'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ReportNoClass = @{ OriginalName = '/nc'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ReportNoFileName = @{ OriginalName = '/NFL'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ReportNoDirectoryName = @{ OriginalName = '/NDL'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        NoProgress = @{ OriginalName = '/NP'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        EstimatedTimeOfArrival = @{ OriginalName = '/ETA'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        LogFilePath = @{ OriginalName = '/LOG:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        LogFilePathAppend = @{ OriginalName = '/LOG+:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        LogFilePathUnicode = @{ OriginalName = '/UNILOG:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        LogFilePathUnicodeAppend = @{ OriginalName = '/UNILOG+:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        Tee = @{ OriginalName = '/TEE'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        NoJobHeader = @{ OriginalName = '/NJH'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        NoJobSummary = @{ OriginalName = '/NJS'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        UnicodeStatus = @{ OriginalName = '/UNICODE'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        JobName = @{ OriginalName = '/job:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        SaveJobName = @{ OriginalName = '/save:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        QuitAfterProcessing = @{ OriginalName = '/quit'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        NoSourceDirectory = @{ OriginalName = '/NOSD'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        NoDestinationDirectory = @{ OriginalName = '/NODD'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        IncludeFile = @{ OriginalName = '/IF'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $False }
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
Run Robocopy.exe with from PowerShell.

.DESCRIPTION
Robocopy.exe with Powershell

.PARAMETER Source
Source Directory (drive:\path or \\server\share\path).


.PARAMETER Destination
Destination Dir (drive:\path or \\server\share\path).


.PARAMETER Files
File(s) to copy  (names/wildcards: default is \*.\*).


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
What to COPY for files (default is /COPY:DA). (copyflags : D=Data, A=Attributes, T=Timestamps). The /DCOPY:E flag requests that extended attribute copying should be attempted for directories. Note that currently robocopy will continue if a directory's EAs could not be copied. This flag is also not included in /COPYALL.


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


.PARAMETER Create
CREATE directory tree and zero-length files only.


.PARAMETER FAT
create destination files using 8.3 FAT file names only.


.PARAMETER IgnoreLongPath
Turn off very long path (> 256 characters) support.


.PARAMETER MonitorChange
Monitors the source, and runs again when more than n changes are detected.


.PARAMETER MonitorTime
Monitors the source, and runs again in m minutes, if changes are detected.


.PARAMETER RunHours
Specifies run times when new copies may be started.


.PARAMETER UsePerFileRunTimes
Checks run times on a per-file (not per-pass) basis.


.PARAMETER InterPacketGap
Specifies the inter-packet gap to free bandwidth on slow lines.


.PARAMETER Junctions
copy Junctions as junctions instead of as the junction targets.


.PARAMETER SymbolicLink
Follows the symbolic link and copies the target.


.PARAMETER MultiThread
Do multi-threaded copies with n threads (default 8). n must be at least 1 and not greater than 128. This option is incompatible with the /IPG and /EFSRAW options. Redirect output using /LOG option for better performance.


.PARAMETER NoDCopy
COPY NO directory info (by default /DCOPY:DA is done).


.PARAMETER NoOffload
copy files without using the Windows Copy Offload mechanism.


.PARAMETER Compress
Request network compression during file transfer, if applicable.


.PARAMETER ArchiveOnly
Copies only files for which the Archive attribute is set.


.PARAMETER ArchiveOnlyWithReset
Copies only files for which the Archive attribute is set, and resets the Archive attribute.


.PARAMETER IncludeAttribute
Includes only files for which any of the specified attributes are set.


.PARAMETER ExcludeAttribute
Excludes files for which any of the specified attributes are set.


.PARAMETER ExcludeFileName
Excludes files that match the specified names or paths. Note that FileName can include wildcard characters (* and ?).


.PARAMETER ExcludeDirectory
Excludes directories that match the specified names and paths.


.PARAMETER ExcludeChangedFiles
Excludes changed files.


.PARAMETER ExcludeNewerFiles
Excludes newer files.


.PARAMETER eXcludeOlderFiles
Exclude Older files.


.PARAMETER ExcludeExtraFilesDirectories
Exclude extra files and directories


.PARAMETER ExcludeLonelyFiles
Excludes lonely files and directories.


.PARAMETER IncludeSameFiles
Includes the same files.


.PARAMETER IncludeTweakedFiles
Includes 'tweaked' files.


.PARAMETER MaximumFileSize
Specifies the maximum file size (to exclude files bigger than N bytes).


.PARAMETER MinimumFileSize
Specifies the minimum file size (to exclude files smaller than N bytes).


.PARAMETER MaximumFileAge
Specifies the maximum file age (to exclude files older than N days or date).


.PARAMETER MinimumFileAge
Specifies the minimum file age (exclude files newer than N days or date).


.PARAMETER MaximumFileLastAccessDate
Specifies the maximum last access date (excludes files unused since N).


.PARAMETER MinimumFileLastAccessDate
Specifies the minimum last access date (excludes files used since N) If N is less than 1900, N specifies the number of days. Otherwise, N specifies a date in the format YYYYMMDD.


.PARAMETER AssumeFATFileTime
Assumes FAT file times (two-second precision).


.PARAMETER CompensateDST
Compensates for one-hour DST time differences.


.PARAMETER ExcludeJunctionPoints
Exclude symbolic links (for both files and directories) and Junction points.


.PARAMETER ExcludeDirectoryJunctionPoints
Excludes junction points for directories.


.PARAMETER ExcludeFileJunctionPoints
Excludes junction points for files.


.PARAMETER IncludeModifiedFiles
Include Modified files (differing change times).


.PARAMETER Retry
Specifies the number of retries on failed copies. Default is 3.


.PARAMETER Wait 
Specifies the wait time between retries, in seconds. The default value of N is 3.


.PARAMETER SaveRetrySettings 
Saves the values specified in the /r and /w options as default settings in the registry.


.PARAMETER WaitForShareName 
Specifies that the system will wait for share names to be defined (retry error 67).


.PARAMETER LowFreeSpaceMode
Using /LFSM requests robocopy to operate in 'low free space mode'. In that mode, robocopy will pause whenever a file copy would cause the destination volume's free space to go below a 'floor' value. If /LFSM is specified with no explicit floor value, the floor is set to ten percent of the destination volume's size. Low free space mode is incompatible with /MT, /EFSRAW, /B, and /ZB.


.PARAMETER LowFreeSpaceModeFloorSize
Using /LFSM requests robocopy to operate in 'low free space mode'. In that mode, robocopy will pause whenever a file copy would cause the destination volume's free space to go below a 'floor' value, specifying the floor size in n [K:kilo,M:mega,G:giga] bytes. Low free space mode is incompatible with /MT, /EFSRAW, /B, and /ZB.


.PARAMETER List
Specifies that files are to be listed only (and not copied, deleted, or time stamped).


.PARAMETER ReportExtraFile 
Report all eXtra files, not just those selected.


.PARAMETER RobocopyVerbose 
Produce Verbose output from Robocopy.exe, showing skipped files.


.PARAMETER ReportSourceFileTimeStamp
Include source file Time Stamps in the output.


.PARAMETER ReportFullPath
Include Full Pathname of files in the output.


.PARAMETER ReportSizeAsBytes
Print sizes as bytes.


.PARAMETER ReportNoSize
Don't log file sizes.


.PARAMETER ReportNoClass
Don't log file classes.


.PARAMETER ReportNoFileName
Don't log file names.


.PARAMETER ReportNoDirectoryName
No Directory List - don't log directory names.


.PARAMETER NoProgress
No Progress - don't display percentage copied.


.PARAMETER EstimatedTimeOfArrival
show Estimated Time of Arrival of copied files.


.PARAMETER LogFilePath
output status to LOG file (overwrite existing log).


.PARAMETER LogFilePathAppend
output status to LOG file (append to existing log).


.PARAMETER LogFilePathUnicode
output status to LOG file as UNICODE (overwrite existing log).


.PARAMETER LogFilePathUnicodeAppend
output status to LOG file as UNICODE (append to existing log).


.PARAMETER Tee
output to console window, as well as the log file.


.PARAMETER NoJobHeader
No Job Header.


.PARAMETER NoJobSummary
No Job Summary.


.PARAMETER UnicodeStatus
output status as UNICODE.


.PARAMETER JobName
Take parameters from the named JOB file.


.PARAMETER SaveJobName
SAVE parameters to the named job file.


.PARAMETER QuitAfterProcessing
QUIT after processing command line (to view parameters).


.PARAMETER NoSourceDirectory
NO Source Directory is specified.


.PARAMETER NoDestinationDirectory
NO Destination Directory is specified.


.PARAMETER IncludeFile
Include the following Files.



.EXAMPLE
PS> PS C:\> Start-Robocopy -Source C:\tmp\from -Destination C:\tmp\to 

Run Robocopy.exe with source 'C:\tmp\from' to destination 'C:\tmp\to'
Original Command: robocopy.exe 'C:\tmp\from' 'C:\tmp\to'


.LINK
https://technet.microsoft.com/en-us/library/cc733145(v=ws.11).aspx

#>
}

Export-ModuleMember -Function Start-Robocopy

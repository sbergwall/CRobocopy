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
[string]$CopyFlags = "DAT",
[ValidateSet('d','a','t')]
[Alias('DCOPY')]
[Parameter()]
[string]$DCopyFlags = "DA",
[Parameter()]
[string]$NODCOPY = "DA",
[Parameter()]
[switch]$NOOFFLOAD,
[Parameter()]
[switch]$COMPRESS,
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
[Alias('Sync')]
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
[Alias('MT')]
[Parameter()]
[int]$MultiThread,
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
[Alias('sl')]
[Parameter()]
[switch]$SymbolicLink,
[Alias('a')]
[Parameter()]
[switch]$Archive,
[Alias('m')]
[Parameter()]
[switch]$ResetArchiveAttribute,
[ValidateSet('R', 'A', 'S','C' ,'H', 'N', 'E', 'T', 'O')]
[Alias('ia')]
[Parameter()]
[string]$IncludeAttribute,
[ValidateSet('R', 'A', 'S','C' ,'H', 'N', 'E', 'T', 'O')]
[Alias('xa')]
[Parameter()]
[string]$ExcludeAttribute,
[Alias('xf')]
[Parameter()]
[string]$ExcludeFileName,
[Alias('xd')]
[Parameter()]
[string]$ExcludeDirectory,
[Alias('xct')]
[Parameter()]
[switch]$ExcludeChangedFiles,
[Alias('xn')]
[Parameter()]
[switch]$ExcludeNewerFiles,
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
[Alias('maxage')]
[Parameter()]
[string]$MaximumFileAge,
[Alias('minage')]
[Parameter()]
[string]$MinimumFileAge,
[Alias('maxlad')]
[Parameter()]
[string]$MaximumFileLastAccessDate,
[Alias('minlad')]
[Parameter()]
[string]$MinimumFileLastAccessDate,
[Alias('xj')]
[Parameter()]
[switch]$ExcludeJunctionPoints,
[Alias('xjf')]
[Parameter()]
[switch]$ExcludeFileJunctionPoints,
[Alias('xjd')]
[Parameter()]
[switch]$ExcludeDirectoryJunctionPoints,
[Alias('fft')]
[Parameter()]
[switch]$AssumeFATFileTime,
[Alias('dst')]
[Parameter()]
[switch]$CompensateDST,
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
[Alias('l')]
[Parameter()]
[switch]$List ,
[Alias('LFSM')]
[Parameter(ParameterSetName='LowFreeSpaceMode')]
[switch]$LowFreeSpaceMode,
[ValidateSet('K','M','G')]
[Alias('LFSMFloorSize')]
[Parameter(ParameterSetName='LowFreeSpaceModeFloorSize')]
[string]$LowFreeSpaceModeFloorSize
    )

BEGIN {
    $__PARAMETERMAP = @{
        Source = @{ OriginalName = ''; OriginalPosition = '0'; Position = '0'; ParameterType = [string]; NoGap = $False }
        Destination = @{ OriginalName = ''; OriginalPosition = '0'; Position = '1'; ParameterType = [string]; NoGap = $False }
        Files = @{ OriginalName = ''; OriginalPosition = '0'; Position = '2'; ParameterType = [string]; NoGap = $False }
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
        NODCOPY = @{ OriginalName = '/NODCOPY:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        NOOFFLOAD = @{ OriginalName = '/NOOFFLOAD'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        COMPRESS = @{ OriginalName = '/COMPRESS'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
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
        Create = @{ OriginalName = '/Create'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        FAT = @{ OriginalName = '/FAT'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        IgnoreLongPath = @{ OriginalName = '/256'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        MonitorChange = @{ OriginalName = '/MON:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        MonitorTime = @{ OriginalName = '/mot:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        MultiThread = @{ OriginalName = '/MT:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        RunHours = @{ OriginalName = '/rh:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        UsePerFileRunTimes = @{ OriginalName = '/pf:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        InterPacketGap = @{ OriginalName = '/ipg:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        SymbolicLink = @{ OriginalName = '/sl'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        Archive = @{ OriginalName = '/a'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ResetArchiveAttribute = @{ OriginalName = '/m'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        IncludeAttribute = @{ OriginalName = '/ia:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        ExcludeAttribute = @{ OriginalName = '/xa:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        ExcludeFileName = @{ OriginalName = '/xf'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $False }
        ExcludeDirectory = @{ OriginalName = '/xd'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $False }
        ExcludeChangedFiles = @{ OriginalName = '/xct'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ExcludeNewerFiles = @{ OriginalName = '/xn'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ExcludeLonelyFiles = @{ OriginalName = '/xl'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        IncludeSameFiles = @{ OriginalName = '/is'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        IncludeTweakedFiles = @{ OriginalName = '/it:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        MaximumFileSize = @{ OriginalName = '/max:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        MaximumFileAge = @{ OriginalName = '/maxage:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        MinimumFileAge = @{ OriginalName = '/minage:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        MaximumFileLastAccessDate = @{ OriginalName = '/maxlad:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        MinimumFileLastAccessDate = @{ OriginalName = '/minlad:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $True }
        ExcludeJunctionPoints = @{ OriginalName = '/xj'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ExcludeFileJunctionPoints = @{ OriginalName = '/xjf'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        ExcludeDirectoryJunctionPoints = @{ OriginalName = '/xjd'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        AssumeFATFileTime = @{ OriginalName = '/fft'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        CompensateDST = @{ OriginalName = '/dst:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        Retry = @{ OriginalName = '/r:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        Wait  = @{ OriginalName = '/w:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        SaveRetrySettings  = @{ OriginalName = '/reg:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [int]; NoGap = $True }
        WaitForShareName  = @{ OriginalName = '/tbd'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        List  = @{ OriginalName = '/l'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        LowFreeSpaceMode = @{ OriginalName = '/LFSM'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        LowFreeSpaceModeFloorSize = @{ OriginalName = '/LFSM:'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [string]; NoGap = $False }
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
File(s) to copy  (names/wildcards: default is '"\*.\*"').


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


.PARAMETER NODCOPY
COPY NO directory info (by default /DCOPY:DA is done).


.PARAMETER NOOFFLOAD
copy files without using the Windows Copy Offload mechanism.


.PARAMETER COMPRESS
Request network compression during file transfer, if applicable.


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


.PARAMETER MultiThread
MOVE files AND dirs (delete from source after copying).


.PARAMETER RunHours
Specifies run times when new copies may be started.


.PARAMETER UsePerFileRunTimes
Checks run times on a per-file (not per-pass) basis.


.PARAMETER InterPacketGap
Specifies the inter-packet gap to free bandwidth on slow lines.


.PARAMETER SymbolicLink
Follows the symbolic link and copies the target.


.PARAMETER Archive
Copies only files for which the Archive attribute is set.


.PARAMETER ResetArchiveAttribute
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


.PARAMETER ExcludeLonelyFiles
Excludes lonely files and directories.


.PARAMETER IncludeSameFiles
 Includes the same files.


.PARAMETER IncludeTweakedFiles
Includes 'tweaked' files.


.PARAMETER MaximumFileSize
Specifies the maximum file size (to exclude files bigger than N bytes).


.PARAMETER MaximumFileAge
Specifies the maximum file age (to exclude files older than N days or date).


.PARAMETER MinimumFileAge
Specifies the minimum file age (exclude files newer than N days or date).


.PARAMETER MaximumFileLastAccessDate
Specifies the maximum last access date (excludes files unused since N).


.PARAMETER MinimumFileLastAccessDate
Specifies the minimum last access date (excludes files used since N) If N is less than 1900, N specifies the number of days. Otherwise, N specifies a date in the format YYYYMMDD.


.PARAMETER ExcludeJunctionPoints
Excludes junction points, which are normally included by default.


.PARAMETER ExcludeFileJunctionPoints
Excludes junction points for files.


.PARAMETER ExcludeDirectoryJunctionPoints
Excludes junction points for directories.


.PARAMETER AssumeFATFileTime
Assumes FAT file times (two-second precision).


.PARAMETER CompensateDST
Compensates for one-hour DST time differences.


.PARAMETER Retry
Specifies the number of retries on failed copies. Default is 3.


.PARAMETER Wait 
Specifies the wait time between retries, in seconds. The default value of N is 3.


.PARAMETER SaveRetrySettings 
Saves the values specified in the /r and /w options as default settings in the registry.


.PARAMETER WaitForShareName 
Specifies that the system will wait for share names to be defined (retry error 67).


.PARAMETER List 
 Specifies that files are to be listed only (and not copied, deleted, or time stamped).


.PARAMETER LowFreeSpaceMode
Using /LFSM requests robocopy to operate in 'low free space mode'. In that mode, robocopy will pause whenever a file copy would cause the destination volume's free space to go below a 'floor' value. If /LFSM is specified with no explicit floor value, the floor is set to ten percent of the destination volume's size. Low free space mode is incompatible with /MT, /EFSRAW, /B, and /ZB.


.PARAMETER LowFreeSpaceModeFloorSize
Using /LFSM requests robocopy to operate in 'low free space mode'. In that mode, robocopy will pause whenever a file copy would cause the destination volume's free space to go below a 'floor' value, specifying the floor size in n [K:kilo,M:mega,G:giga] bytes. Low free space mode is incompatible with /MT, /EFSRAW, /B, and /ZB.



.EXAMPLE
PS> PS C:\> Start-Robocopy -Source C:\tmp\from -Destination C:\tmp\to 

Run Robocopy.exe with source 'C:\tmp\from' to destination 'C:\tmp\to'
Original Command: robocopy.exe 'C:\tmp\from' 'C:\tmp\to'


.LINK
https://technet.microsoft.com/en-us/library/cc733145(v=ws.11).aspx

#>
}

Export-ModuleMember -Function Start-Robocopy

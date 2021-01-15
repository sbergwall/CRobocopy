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

-------------------------------------------------------------------------------
   ROBOCOPY     ::     Robust File Copy for Windows                              
-------------------------------------------------------------------------------

  Started : Friday, 15 January 2021 23:03:57
              Usage :: ROBOCOPY source destination [file [file]...] [options]

             source :: Source Directory (drive:\path or \\server\share\path).
        destination :: Destination Dir  (drive:\path or \\server\share\path).
               file :: File(s) to copy  (names/wildcards: default is "*.*").

::
:: Copy options :
::
                 /S :: copy Subdirectories, but not empty ones.
                 /E :: copy subdirectories, including Empty ones.
             /LEV:n :: only copy the top n LEVels of the source directory tree.

                 /Z :: copy files in restartable mode.
                 /B :: copy files in Backup mode.
                /ZB :: use restartable mode; if access denied use Backup mode.
                 /J :: copy using unbuffered I/O (recommended for large files).
            /EFSRAW :: copy all encrypted files in EFS RAW mode.

  /COPY:copyflag[s] :: what to COPY for files (default is /COPY:DAT).
                       (copyflags : D=Data, A=Attributes, T=Timestamps, X=Skip alt data streams).
                       (S=Security=NTFS ACLs, O=Owner info, U=aUditing info).

 
               /SEC :: copy files with SECurity (equivalent to /COPY:DATS).
           /COPYALL :: COPY ALL file info (equivalent to /COPY:DATSOU).
            /NOCOPY :: COPY NO file info (useful with /PURGE).
            /SECFIX :: FIX file SECurity on all files, even skipped files.
            /TIMFIX :: FIX file TIMes on all files, even skipped files.

             /PURGE :: delete dest files/dirs that no longer exist in source.
               /MIR :: MIRror a directory tree (equivalent to /E plus /PURGE).

               /MOV :: MOVe files (delete from source after copying).
              /MOVE :: MOVE files AND dirs (delete from source after copying).

     /A+:[RASHCNET] :: add the given Attributes to copied files.
     /A-:[RASHCNET] :: remove the given Attributes from copied files.

            /CREATE :: CREATE directory tree and zero-length files only.
               /FAT :: create destination files using 8.3 FAT file names only.
               /256 :: turn off very long path (> 256 characters) support.

             /MON:n :: MONitor source; run again when more than n changes seen.
             /MOT:m :: MOnitor source; run again in m minutes Time, if changed.

      /RH:hhmm-hhmm :: Run Hours - times when new copies may be started.
                /PF :: check run hours on a Per File (not per pass) basis.

             /IPG:n :: Inter-Packet Gap (ms), to free bandwidth on slow lines.

                /SJ :: copy Junctions as junctions instead of as the junction targets.
                /SL :: copy Symbolic Links as links instead of as the link targets.

            /MT[:n] :: Do multi-threaded copies with n threads (default 8).
                       n must be at least 1 and not greater than 128.
                       This option is incompatible with the /IPG and /EFSRAW options.
                       Redirect output using /LOG option for better performance.

 /DCOPY:copyflag[s] :: what to COPY for directories (default is /DCOPY:DA).
                       (copyflags : D=Data, A=Attributes, T=Timestamps, E=EAs, X=Skip alt data streams).

           /NODCOPY :: COPY NO directory info (by default /DCOPY:DA is done).

         /NOOFFLOAD :: copy files without using the Windows Copy Offload mechanism.

          /COMPRESS :: Request network compression during file transfer, if applicable.

::
:: File Selection Options :
::
                 /A :: copy only files with the Archive attribute set.
                 /M :: copy only files with the Archive attribute and reset it.
    /IA:[RASHCNETO] :: Include only files with any of the given Attributes set.
    /XA:[RASHCNETO] :: eXclude files with any of the given Attributes set.

 /XF file [file]... :: eXclude Files matching given names/paths/wildcards.
 /XD dirs [dirs]... :: eXclude Directories matching given names/paths.

                /XC :: eXclude Changed files.
                /XN :: eXclude Newer files.
                /XO :: eXclude Older files.
                /XX :: eXclude eXtra files and directories.
                /XL :: eXclude Lonely files and directories.
                /IS :: Include Same files.
                /IT :: Include Tweaked files.

             /MAX:n :: MAXimum file size - exclude files bigger than n bytes.
             /MIN:n :: MINimum file size - exclude files smaller than n bytes.

          /MAXAGE:n :: MAXimum file AGE - exclude files older than n days/date.
          /MINAGE:n :: MINimum file AGE - exclude files newer than n days/date.
          /MAXLAD:n :: MAXimum Last Access Date - exclude files unused since n.
          /MINLAD:n :: MINimum Last Access Date - exclude files used since n.
                       (If n < 1900 then n = n days, else n = YYYYMMDD date).

               /FFT :: assume FAT File Times (2-second granularity).
               /DST :: compensate for one-hour DST time differences.

                /XJ :: eXclude symbolic links (for both files and directories) and Junction points.
               /XJD :: eXclude symbolic links for Directories and Junction points.
               /XJF :: eXclude symbolic links for Files.

                /IM :: Include Modified files (differing change times).
::
:: Retry Options :
::
               /R:n :: number of Retries on failed copies: default 1 million.
               /W:n :: Wait time between retries: default is 30 seconds.

               /REG :: Save /R:n and /W:n in the Registry as default settings.

               /TBD :: Wait for sharenames To Be Defined (retry error 67).

               /LFSM :: Operate in low free space mode, enabling copy pause and resume (see Remarks).

               /LFSM:n[KMG] :: /LFSM, specifying the floor size in n [K:kilo,M:mega,G:giga] bytes.

::
:: Logging Options :
::
                 /L :: List only - don't copy, timestamp or delete any files.
                 /X :: report all eXtra files, not just those selected.
                 /V :: produce Verbose output, showing skipped files.
                /TS :: include source file Time Stamps in the output.
                /FP :: include Full Pathname of files in the output.
             /BYTES :: Print sizes as bytes.

                /NS :: No Size - don't log file sizes.
                /NC :: No Class - don't log file classes.
               /NFL :: No File List - don't log file names.
               /NDL :: No Directory List - don't log directory names.

                /NP :: No Progress - don't display percentage copied.
               /ETA :: show Estimated Time of Arrival of copied files.

          /LOG:file :: output status to LOG file (overwrite existing log).
         /LOG+:file :: output status to LOG file (append to existing log).

       /UNILOG:file :: output status to LOG file as UNICODE (overwrite existing log).
      /UNILOG+:file :: output status to LOG file as UNICODE (append to existing log).

               /TEE :: output to console window, as well as the log file.

               /NJH :: No Job Header.
               /NJS :: No Job Summary.

           /UNICODE :: output status as UNICODE.

::
:: Job Options :
::
       /JOB:jobname :: take parameters from the named JOB file.
      /SAVE:jobname :: SAVE parameters to the named job file
              /QUIT :: QUIT after processing command line (to view parameters). 
              /NOSD :: NO Source Directory is specified.
              /NODD :: NO Destination Directory is specified.
                /IF :: Include the following Files.

::
:: Remarks :
::
       Using /PURGE or /MIR on the root directory of the volume formerly caused 
       robocopy to apply the requested operation on files inside the System 
       Volume Information directory as well. This is no longer the case; if 
       either is specified, robocopy will skip any files or directories with that 
       name in the top-level source and destination directories of the copy session.

       The modified files classification applies only when both source 
       and destination filesystems support change timestamps (e.g., NTFS) 
       and the source and destination files have different change times but are 
       otherwise the same. These files are not copied by default; specify /IM 
       to include them.

       The /DCOPY:E flag requests that extended attribute copying should be 
       attempted for directories. Note that currently robocopy will continue 
       if a directory's EAs could not be copied. This flag is also not included 
       in /COPYALL.

       Using /LFSM requests robocopy to operate in 'low free space mode'. 
       In that mode, robocopy will pause whenever a file copy would cause the 
       destination volume's free space to go below a 'floor' value, which 
       can be explicitly specified by the LFSM:n[KMG] form of the flag. 
       If /LFSM is specified with no explicit floor value, the floor is set to 
       ten percent of the destination volume's size. 
       Low free space mode is incompatible with /MT, /EFSRAW, /B, and /ZB.

.DESCRIPTION See help for C:/windows/system32/robocopy.exe

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

---
external help file: cRobocopy-help.xml
Module Name: cRobocopy
online version: https://technet.microsoft.com/en-us/library/cc733145(v=ws.11).aspx
schema: 2.0.0
---

# Start-Robocopy

## SYNOPSIS
Run Robocopy.exe with from PowerShell.

## SYNTAX

```
Start-Robocopy [-Source] <String> [-Destination] <String> [[-Files] <String[]>] [-IncludeSubDirectories]
 [-IncludeEmptySubDirectories] [-Level <Int32>] [-RestartMode] [-BackupMode] [-RestartBackupMode]
 [-UnbufferedIOMode] [-EFSRAW] [-CopyFlags <String>] [-DCopyFlags <String>] [-SEC] [-COPYALL] [-NoCopy]
 [-SecFix] [-TimFix] [-Purge] [-Mirror] [-Mov] [-Move] [-AddAttribute <String>] [-RemoveAttribute <String>]
 [-Create] [-FAT] [-IgnoreLongPath] [-MonitorChange <Int32>] [-MonitorTime <Int32>] [-RunHours <String>]
 [-UsePerFileRunTimes] [-InterPacketGap <Int32>] [-Junctions] [-SymbolicLink] [-MultiThread <Int32>] [-NoDCopy]
 [-NoOffload] [-Compress] [-ArchiveOnly] [-ArchiveOnlyWithReset] [-IncludeAttribute <String>]
 [-ExcludeAttribute <String>] [-ExcludeFileName <String>] [-ExcludeDirectory <String>] [-ExcludeChangedFiles]
 [-ExcludeNewerFiles] [-eXcludeOlderFiles] [-ExcludeExtraFilesDirectories] [-ExcludeLonelyFiles]
 [-IncludeSameFiles] [-IncludeTweakedFiles] [-MaximumFileSize <Int32>] [-MinimumFileSize <Int32>]
 [-MaximumFileAge <String>] [-MinimumFileAge <String>] [-MaximumFileLastAccessDate <String>]
 [-MinimumFileLastAccessDate <String>] [-AssumeFATFileTime] [-CompensateDST] [-ExcludeJunctionPoints]
 [-ExcludeDirectoryJunctionPoints] [-ExcludeFileJunctionPoints] [-IncludeModifiedFiles] [-Retry <Int32>]
 [-Wait <Int32>] [-SaveRetrySettings <Int32>] [-WaitForShareName] [-LowFreeSpaceMode]
 [-LowFreeSpaceModeFloorSize <String>] [-List] [-ReportExtraFile] [-RobocopyVerbose]
 [-ReportSourceFileTimeStamp] [-ReportFullPath] [-ReportSizeAsBytes] [-ReportNoSize] [-ReportNoClass]
 [-ReportNoFileName] [-ReportNoDirectoryName] [<CommonParameters>]
```

## DESCRIPTION
Robocopy.exe with Powershell

## EXAMPLES

### EXAMPLE 1
```
PS C:\> Start-Robocopy -Source C:\tmp\from -Destination C:\tmp\to
```

Run Robocopy.exe with source 'C:\tmp\from' to destination 'C:\tmp\to'
Original Command: robocopy.exe 'C:\tmp\from' 'C:\tmp\to'

## PARAMETERS

### -Source
Source Directory (drive:\path or \\\\server\share\path).

```yaml
Type: String
Parameter Sets: (All)
Aliases: Path

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Destination
Destination Dir (drive:\path or \\\\server\share\path).

```yaml
Type: String
Parameter Sets: (All)
Aliases: Target

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Files
File(s) to copy  (names/wildcards: default is \*.\*).

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: *.*
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeSubDirectories
copy Subdirectories, but not empty ones.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: s

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeEmptySubDirectories
copy subdirectories, including Empty ones.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: e, Recurse

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Level
only copy the top n LEVels of the source directory tree.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: lev, Depth

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestartMode
copy files in restartable mode.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: z

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -BackupMode
copy files in Backup mode.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: b

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestartBackupMode
use restartable mode; if access denied use Backup mode.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: zb

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -UnbufferedIOMode
copy using unbuffered I/O (recommended for large files).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: j

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -EFSRAW
copy all encrypted files in EFS RAW mode.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -CopyFlags
What to COPY for files (default is /COPY:DAT).
(copyflags : D=Data, A=Attributes, T=Timestamps, X=Skip alt data streams).
(S=Security=NTFS ACLs, O=Owner info, U=aUditing info).

```yaml
Type: String
Parameter Sets: (All)
Aliases: COPY

Required: False
Position: Named
Default value: DAT
Accept pipeline input: False
Accept wildcard characters: False
```

### -DCopyFlags
What to COPY for files (default is /COPY:DA).
(copyflags : D=Data, A=Attributes, T=Timestamps).

```yaml
Type: String
Parameter Sets: (All)
Aliases: DCOPY

Required: False
Position: Named
Default value: DA
Accept pipeline input: False
Accept wildcard characters: False
```

### -SEC
copy files with SECurity (equivalent to /COPY:DATS).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -COPYALL
COPY ALL file info (equivalent to /COPY:DATSOU).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoCopy
COPY NO file info (useful with /PURGE).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecFix
FIX file SECurity on all files, even skipped files.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimFix
FIX file TIMes on all files, even skipped files.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Purge
delete dest files/dirs that no longer exist in source.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Mirror
MIRror a directory tree (equivalent to /E plus /PURGE).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: Sync, mir

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Mov
MOVe files (delete from source after copying).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Move
MOVE files AND dirs (delete from source after copying).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AddAttribute
Add the given Attributes to copied files.
R = Read only, A = Archive, S = System, H = Hidden, C = Compressed, N = Not content indexed,E = Encrypted, T = Temporary

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemoveAttribute
Remove the given Attributes from copied files.
R = Read only, A = Archive, S = System, H = Hidden, C = Compressed, N = Not content indexed,E = Encrypted, T = Temporary

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Create
CREATE directory tree and zero-length files only.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -FAT
create destination files using 8.3 FAT file names only.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoreLongPath
Turn off very long path (\> 256 characters) support.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 256

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MonitorChange
Monitors the source, and runs again when more than n changes are detected.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: MON

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MonitorTime
Monitors the source, and runs again in m minutes, if changes are detected.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: MOT

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -RunHours
Specifies run times when new copies may be started.

```yaml
Type: String
Parameter Sets: (All)
Aliases: rh

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UsePerFileRunTimes
Checks run times on a per-file (not per-pass) basis.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: pf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -InterPacketGap
Specifies the inter-packet gap to free bandwidth on slow lines.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: ipg

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Junctions
copy Junctions as junctions instead of as the junction targets.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: sj

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SymbolicLink
Follows the symbolic link and copies the target.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: sl

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MultiThread
Do multi-threaded copies with n threads (default 8).
n must be at least 1 and not greater than 128.
This option is incompatible with the /IPG and /EFSRAW options.
Redirect output using /LOG option for better performance.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: MT

Required: False
Position: Named
Default value: 8
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoDCopy
COPY NO directory info (by default /DCOPY:DA is done).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoOffload
copy files without using the Windows Copy Offload mechanism.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Compress
Request network compression during file transfer, if applicable.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ArchiveOnly
Copies only files for which the Archive attribute is set.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: a

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ArchiveOnlyWithReset
Copies only files for which the Archive attribute is set, and resets the Archive attribute.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: m

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeAttribute
Includes only files for which any of the specified attributes are set.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ia

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeAttribute
Excludes files for which any of the specified attributes are set.

```yaml
Type: String
Parameter Sets: (All)
Aliases: xa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeFileName
Excludes files that match the specified names or paths.
Note that FileName can include wildcard characters (* and ?).

```yaml
Type: String
Parameter Sets: (All)
Aliases: xf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeDirectory
Excludes directories that match the specified names and paths.

```yaml
Type: String
Parameter Sets: (All)
Aliases: xd

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeChangedFiles
Excludes changed files.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: xc

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeNewerFiles
Excludes newer files.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: xn

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -eXcludeOlderFiles
Exclude Older files.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: xo

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeExtraFilesDirectories
Exclude extra files and directories

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: XX

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeLonelyFiles
Excludes lonely files and directories.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: xl

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeSameFiles
Includes the same files.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: is

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeTweakedFiles
Includes 'tweaked' files.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: it

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaximumFileSize
Specifies the maximum file size (to exclude files bigger than N bytes).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: max

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinimumFileSize
Specifies the minimum file size (to exclude files smaller than N bytes).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: min

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaximumFileAge
Specifies the maximum file age (to exclude files older than N days or date).

```yaml
Type: String
Parameter Sets: (All)
Aliases: maxage

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinimumFileAge
Specifies the minimum file age (exclude files newer than N days or date).

```yaml
Type: String
Parameter Sets: (All)
Aliases: minage

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaximumFileLastAccessDate
Specifies the maximum last access date (excludes files unused since N).

```yaml
Type: String
Parameter Sets: (All)
Aliases: maxlad

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinimumFileLastAccessDate
Specifies the minimum last access date (excludes files used since N) If N is less than 1900, N specifies the number of days.
Otherwise, N specifies a date in the format YYYYMMDD.

```yaml
Type: String
Parameter Sets: (All)
Aliases: minlad

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AssumeFATFileTime
Assumes FAT file times (two-second precision).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: fft

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -CompensateDST
Compensates for one-hour DST time differences.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: dst

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeJunctionPoints
Exclude symbolic links (for both files and directories) and Junction points.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: xj

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeDirectoryJunctionPoints
Excludes junction points for directories.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: xjd

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeFileJunctionPoints
Excludes junction points for files.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: xjf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeModifiedFiles
Include Modified files (differing change times).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: IM

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Retry
Specifies the number of retries on failed copies.
Default is 3.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: r

Required: False
Position: Named
Default value: 3
Accept pipeline input: False
Accept wildcard characters: False
```

### -Wait
Specifies the wait time between retries, in seconds.
The default value of N is 3.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: w

Required: False
Position: Named
Default value: 3
Accept pipeline input: False
Accept wildcard characters: False
```

### -SaveRetrySettings
Saves the values specified in the /r and /w options as default settings in the registry.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: reg

Required: False
Position: Named
Default value: 3
Accept pipeline input: False
Accept wildcard characters: False
```

### -WaitForShareName
Specifies that the system will wait for share names to be defined (retry error 67).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: tbd

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -LowFreeSpaceMode
Using /LFSM requests robocopy to operate in 'low free space mode'.
In that mode, robocopy will pause whenever a file copy would cause the destination volume's free space to go below a 'floor' value.
If /LFSM is specified with no explicit floor value, the floor is set to ten percent of the destination volume's size.
Low free space mode is incompatible with /MT, /EFSRAW, /B, and /ZB.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: LFSM

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -LowFreeSpaceModeFloorSize
Using /LFSM requests robocopy to operate in 'low free space mode'.
In that mode, robocopy will pause whenever a file copy would cause the destination volume's free space to go below a 'floor' value, specifying the floor size in n \[K:kilo,M:mega,G:giga\] bytes.
Low free space mode is incompatible with /MT, /EFSRAW, /B, and /ZB.

```yaml
Type: String
Parameter Sets: (All)
Aliases: LFSMFloorSize

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -List
Specifies that files are to be listed only (and not copied, deleted, or time stamped).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: l

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReportExtraFile
Report all eXtra files, not just those selected.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: x

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RobocopyVerbose
Produce Verbose output from Robocopy.exe, showing skipped files.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: V

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReportSourceFileTimeStamp
Include source file Time Stamps in the output.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: ts

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReportFullPath
Include Full Pathname of files in the output.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: FP

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReportSizeAsBytes
Print sizes as bytes.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: bytes

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReportNoSize
Don't log file sizes.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: ns

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReportNoClass
Don't log file classes.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: nc

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReportNoFileName
Don't log file names.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: NFL

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReportNoDirectoryName
Don't log directory names.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: ndl

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://technet.microsoft.com/en-us/library/cc733145(v=ws.11).aspx](https://technet.microsoft.com/en-us/library/cc733145(v=ws.11).aspx)


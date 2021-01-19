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

### IncludeSubDirectories
```
Start-Robocopy [-Source] <String> [-Destination] <String> [[-Files] <String>] [-IncludeSubDirectories]
 [-Level <Int32>] [-RestartMode] [-BackupMode] [-RestartBackupMode] [-UnbufferedIOMode] [-EFSRAW]
 [-CopyFlags <String>] [-DCopyFlags <String>] [-NODCOPY <String>] [-NOOFFLOAD] [-COMPRESS] [-SEC] [-COPYALL]
 [-NoCopy] [-SecFix] [-TimFix] [-Purge] [-Mirror] [-Mov] [-Move] [-AddAttribute <String>]
 [-RemoveAttribute <String>] [-Create] [-FAT] [-IgnoreLongPath] [-MonitorChange <Int32>] [-MonitorTime <Int32>]
 [-MultiThread <Int32>] [-RunHours <String>] [-UsePerFileRunTimes] [-InterPacketGap <Int32>] [-SymbolicLink]
 [-Archive] [-ResetArchiveAttribute] [-IncludeAttribute <String>] [-ExcludeAttribute <String>]
 [-ExcludeFileName <String>] [-ExcludeDirectory <String>] [-ExcludeChangedFiles] [-ExcludeNewerFiles]
 [-ExcludeLonelyFiles] [-IncludeSameFiles] [-IncludeTweakedFiles] [-MaximumFileSize <Int32>]
 [-MaximumFileAge <String>] [-MinimumFileAge <String>] [-MaximumFileLastAccessDate <String>]
 [-MinimumFileLastAccessDate <String>] [-ExcludeJunctionPoints] [-ExcludeFileJunctionPoints]
 [-ExcludeDirectoryJunctionPoints] [-AssumeFATFileTime] [-CompensateDST] [-Retry <Int32>] [-Wait <Int32>]
 [-SaveRetrySettings <Int32>] [-WaitForShareName] [-List] [<CommonParameters>]
```

### IncludeEmptySubDirectories
```
Start-Robocopy [-Source] <String> [-Destination] <String> [[-Files] <String>] [-IncludeEmptySubDirectories]
 [-Level <Int32>] [-RestartMode] [-BackupMode] [-RestartBackupMode] [-UnbufferedIOMode] [-EFSRAW]
 [-CopyFlags <String>] [-DCopyFlags <String>] [-NODCOPY <String>] [-NOOFFLOAD] [-COMPRESS] [-SEC] [-COPYALL]
 [-NoCopy] [-SecFix] [-TimFix] [-Purge] [-Mirror] [-Mov] [-Move] [-AddAttribute <String>]
 [-RemoveAttribute <String>] [-Create] [-FAT] [-IgnoreLongPath] [-MonitorChange <Int32>] [-MonitorTime <Int32>]
 [-MultiThread <Int32>] [-RunHours <String>] [-UsePerFileRunTimes] [-InterPacketGap <Int32>] [-SymbolicLink]
 [-Archive] [-ResetArchiveAttribute] [-IncludeAttribute <String>] [-ExcludeAttribute <String>]
 [-ExcludeFileName <String>] [-ExcludeDirectory <String>] [-ExcludeChangedFiles] [-ExcludeNewerFiles]
 [-ExcludeLonelyFiles] [-IncludeSameFiles] [-IncludeTweakedFiles] [-MaximumFileSize <Int32>]
 [-MaximumFileAge <String>] [-MinimumFileAge <String>] [-MaximumFileLastAccessDate <String>]
 [-MinimumFileLastAccessDate <String>] [-ExcludeJunctionPoints] [-ExcludeFileJunctionPoints]
 [-ExcludeDirectoryJunctionPoints] [-AssumeFATFileTime] [-CompensateDST] [-Retry <Int32>] [-Wait <Int32>]
 [-SaveRetrySettings <Int32>] [-WaitForShareName] [-List] [<CommonParameters>]
```

### LowFreeSpaceMode
```
Start-Robocopy [-Source] <String> [-Destination] <String> [[-Files] <String>] [-Level <Int32>] [-RestartMode]
 [-BackupMode] [-RestartBackupMode] [-UnbufferedIOMode] [-EFSRAW] [-CopyFlags <String>] [-DCopyFlags <String>]
 [-NODCOPY <String>] [-NOOFFLOAD] [-COMPRESS] [-SEC] [-COPYALL] [-NoCopy] [-SecFix] [-TimFix] [-Purge]
 [-Mirror] [-Mov] [-Move] [-AddAttribute <String>] [-RemoveAttribute <String>] [-Create] [-FAT]
 [-IgnoreLongPath] [-MonitorChange <Int32>] [-MonitorTime <Int32>] [-MultiThread <Int32>] [-RunHours <String>]
 [-UsePerFileRunTimes] [-InterPacketGap <Int32>] [-SymbolicLink] [-Archive] [-ResetArchiveAttribute]
 [-IncludeAttribute <String>] [-ExcludeAttribute <String>] [-ExcludeFileName <String>]
 [-ExcludeDirectory <String>] [-ExcludeChangedFiles] [-ExcludeNewerFiles] [-ExcludeLonelyFiles]
 [-IncludeSameFiles] [-IncludeTweakedFiles] [-MaximumFileSize <Int32>] [-MaximumFileAge <String>]
 [-MinimumFileAge <String>] [-MaximumFileLastAccessDate <String>] [-MinimumFileLastAccessDate <String>]
 [-ExcludeJunctionPoints] [-ExcludeFileJunctionPoints] [-ExcludeDirectoryJunctionPoints] [-AssumeFATFileTime]
 [-CompensateDST] [-Retry <Int32>] [-Wait <Int32>] [-SaveRetrySettings <Int32>] [-WaitForShareName] [-List]
 [-LowFreeSpaceMode] [<CommonParameters>]
```

### LowFreeSpaceModeFloorSize
```
Start-Robocopy [-Source] <String> [-Destination] <String> [[-Files] <String>] [-Level <Int32>] [-RestartMode]
 [-BackupMode] [-RestartBackupMode] [-UnbufferedIOMode] [-EFSRAW] [-CopyFlags <String>] [-DCopyFlags <String>]
 [-NODCOPY <String>] [-NOOFFLOAD] [-COMPRESS] [-SEC] [-COPYALL] [-NoCopy] [-SecFix] [-TimFix] [-Purge]
 [-Mirror] [-Mov] [-Move] [-AddAttribute <String>] [-RemoveAttribute <String>] [-Create] [-FAT]
 [-IgnoreLongPath] [-MonitorChange <Int32>] [-MonitorTime <Int32>] [-MultiThread <Int32>] [-RunHours <String>]
 [-UsePerFileRunTimes] [-InterPacketGap <Int32>] [-SymbolicLink] [-Archive] [-ResetArchiveAttribute]
 [-IncludeAttribute <String>] [-ExcludeAttribute <String>] [-ExcludeFileName <String>]
 [-ExcludeDirectory <String>] [-ExcludeChangedFiles] [-ExcludeNewerFiles] [-ExcludeLonelyFiles]
 [-IncludeSameFiles] [-IncludeTweakedFiles] [-MaximumFileSize <Int32>] [-MaximumFileAge <String>]
 [-MinimumFileAge <String>] [-MaximumFileLastAccessDate <String>] [-MinimumFileLastAccessDate <String>]
 [-ExcludeJunctionPoints] [-ExcludeFileJunctionPoints] [-ExcludeDirectoryJunctionPoints] [-AssumeFATFileTime]
 [-CompensateDST] [-Retry <Int32>] [-Wait <Int32>] [-SaveRetrySettings <Int32>] [-WaitForShareName] [-List]
 [-LowFreeSpaceModeFloorSize <String>] [<CommonParameters>]
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
File(s) to copy  (names/wildcards: default is "\*.\*").

```yaml
Type: String
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
Parameter Sets: IncludeSubDirectories
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
Parameter Sets: IncludeEmptySubDirectories
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

### -NODCOPY
COPY NO directory info (by default /DCOPY:DA is done).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: DA
Accept pipeline input: False
Accept wildcard characters: False
```

### -NOOFFLOAD
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

### -COMPRESS
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
Aliases: Sync

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

### -MultiThread
MOVE files AND dirs (delete from source after copying).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: MT

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

### -Archive
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

### -ResetArchiveAttribute
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
Aliases: xct

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

### -ExcludeJunctionPoints
Excludes junction points, which are normally included by default.

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

### -LowFreeSpaceMode
Using /LFSM requests robocopy to operate in 'low free space mode'.
In that mode, robocopy will pause whenever a file copy would cause the destination volume's free space to go below a 'floor' value.
If /LFSM is specified with no explicit floor value, the floor is set to ten percent of the destination volume's size.
Low free space mode is incompatible with /MT, /EFSRAW, /B, and /ZB.

```yaml
Type: SwitchParameter
Parameter Sets: LowFreeSpaceMode
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
Parameter Sets: LowFreeSpaceModeFloorSize
Aliases: LFSMFloorSize

Required: False
Position: Named
Default value: None
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


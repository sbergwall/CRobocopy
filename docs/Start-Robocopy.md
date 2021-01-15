---
external help file: cRobocopy-help.xml
Module Name: cRobocopy
online version: https://technet.microsoft.com/en-us/library/cc733145(v=ws.11).aspx
schema: 2.0.0
---

# Start-Robocopy

## SYNOPSIS
Run Robocopy.exe with native PowerShell Support.

## SYNTAX

### IncludeSubDirectories
```
Start-Robocopy [-Source] <String> [-Destination] <String> [[-Files] <String>] [-IncludeSubDirectories]
 [-Level <Int32>] [-RestartMode] [-BackupMode] [-RestartBackupMode] [-UnbufferedIOMode] [-EFSRAW]
 [-CopyFlags <String>] [-DCopyFlags <String>] [-SEC] [-COPYALL] [-NoCopy] [-SecFix] [-TimFix] [-Purge]
 [-Mirror] [-Mov] [-Move] [-AddAttribute <String>] [-RemoveAttribute <String>] [<CommonParameters>]
```

### IncludeEmptySubDirectories
```
Start-Robocopy [-Source] <String> [-Destination] <String> [[-Files] <String>] [-IncludeEmptySubDirectories]
 [-Level <Int32>] [-RestartMode] [-BackupMode] [-RestartBackupMode] [-UnbufferedIOMode] [-EFSRAW]
 [-CopyFlags <String>] [-DCopyFlags <String>] [-SEC] [-COPYALL] [-NoCopy] [-SecFix] [-TimFix] [-Purge]
 [-Mirror] [-Mov] [-Move] [-AddAttribute <String>] [-RemoveAttribute <String>] [<CommonParameters>]
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
File(s) to copy  (names/wildcards: default is '*.*'').

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
Default value: None
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
Default value: None
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
Aliases:

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://technet.microsoft.com/en-us/library/cc733145(v=ws.11).aspx](https://technet.microsoft.com/en-us/library/cc733145(v=ws.11).aspx)


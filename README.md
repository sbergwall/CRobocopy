# cRobocopy

Robocopy module created with PowerShell/Crescendo

Note: If you're looking at a larger migration in a Windows environment, check out [Storage Migration Service](https://docs.microsoft.com/en-us/windows-server/storage/storage-migration-service/overview)

## Remarks from Robocopy.exe

Using /PURGE or /MIR on the root directory of the volume formerly caused robocopy to apply the requested operation on files inside the System Volume Information directory as well. This is no longer the case; if either is specified, robocopy will skip any files or directories with that name in the top-level source and destination directories of the copy session.

The modified files classification applies only when both source and destination filesystems support change timestamps (e.g., NTFS) and the source and destination files have different change times but are otherwise the same. These files are not copied by default; specify /IM to include them.
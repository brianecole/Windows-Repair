This is my version of running SFC /SCANNOW

This runs a checkdisk on C:\ drive, fixes any problems etc.  You will want to reboot after running this or more than likely 
will need to reboot to run it.

The rest of the commands check the local repository of system files to make sure they are version matching, and valid.  It will
repair any files that are corrupt or missing.

Finally SFC will be run to check.

This is a last ditch effort in case just running SFC/SCANNOW by itself doesn't fix the problem.  I have found that this will
usually fix most problems.

Run CheckDisk on C:\ drive, fix errors, shows each file, recovers bad sectors, and clear bad sector table and scan whole disk

```
CHKDSK C: /f /v /r /b
```
Will most likely need to reboot after issuing this command


Now check the local install image for any errors, and repair them

```
DISM.EXE /Online /Cleanup-Image /AnalyzeComponentStore
DISM.EXE /Online /Cleanup-Image /StartComponentCleanup
DISM.EXE /Online /Cleanup-Image /ScanHealth
DISM.EXE /Online /Cleanup-Image /CheckHealth
DISM.EXE /Online /Cleanup-Image /RestoreHealth
```

Finally, run SFC and scan

```
SFC /SCANNOW
```

Reboot.

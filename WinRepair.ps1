CHKDSK C: /f /v /r /b
DISM.EXE /Online /Cleanup-Image /AnalyzeComponentStore
DISM.EXE /Online /Cleanup-Image /StartComponentCleanup
DISM.EXE /Online /Cleanup-Image /ScanHealth
DISM.EXE /Online /Cleanup-Image /CheckHealth
DISM.EXE /Online /Cleanup-Image /RestoreHealth
SFC /Scannow
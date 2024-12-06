#General script for windows 10 hardening

#Defender
    Update-MpSignature
    Set-MpPreference -DisableRealtimeMonitoring 0
    Set-MpPreference -SignatureScheduleDay Everyday
    Set-MpPreference -CheckForSignaturesBeforeRunningScan 1
    Set-MpPreference -ScanPurgeItemsAfterDelay 30
    Set-MpPreference -AllowNetworkProtectionOnWinServer 1
    Set-MpPreference -AllowSwitchToAsyncInspection 1
    Set-MpPreference -CloudBlockLevel 2
    Set-MpPreference -DisableArchiveScanning 0
    Set-MpPreference -DisableAutoExclusions 1
    Set-MpPreference -DisableDatagramProcessing 0
    Set-MpPreference -DisableDnsOverTcpParsing 0
    Set-MpPreference -DisableDnsParsing 
    Set-MpPreference -DisableIOAVProtection $false
    Set-MpPreference -DisableNetworkProtectionPerfTelemetry $false
    Limit-EventLog -LogName "Windows PowerShell" -MaximumSize 20KB

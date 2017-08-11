# PS-ACE

```
==========================================================
|      Thank you for provisioning ACE with Docker!!      |
==========================================================

Please use the following information to interact with ACE:
             Uri: https://192.168.50.187
          ApiKey: d0bf91fa-9934-40ca-8cb9-5a1168546abc
      Thumbprint: 39F459D8CBE1D92396A435F6D5B375AED42CE518

==========================================================
```

```powershell
# Create a hash table with ACE's common parameters
$props = @{
    Uri = 'https://192.168.50.187'
    ApiKey = 'd0bf91fa-9934-40ca-8cb9-5a1168546abc'
    Thumbprint = '39F459D8CBE1D92396A435F6D5B375AED42CE518'
}

# Pass parameters through Splatting the props variable
Get-AceUser @props
```

## Cmdlets
### Get-AceComputer
### Get-AceCredential
### Get-AceSchedule
### Get-AceScript
### Get-AceSweep
### Get-AceSweepResult
### Get-AceUser
### Invoke-AceWebRequest
### New-AceCredential
### New-AceScheduledScan
### New-AceScript
### New-AceUser
### Remove-AceCredential
### Remove-AceScript
### Remove-AceUser
### Send-AceResult
### Start-AceDiscovery
### Start-AceSweep
### Update-AceCredential
### Update-AceUser
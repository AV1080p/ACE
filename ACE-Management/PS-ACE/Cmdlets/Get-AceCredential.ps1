function Get-AceCredential
{
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory)]
        [string]
        $Uri,
        
        [Parameter(Mandatory)]
        [string]
        $ApiKey
    )
    
    try
    {
        $result = Invoke-AceWebRequest -Method Get -Uri "$($Uri)/ace/credential" -ApiKey $ApiKey -CheckCert -ErrorAction Stop
        Write-Output ($result | ConvertFrom-Json)        
    }
    catch
    {
        
    }
}
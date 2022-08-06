set-strictMode -version 2.0

Write-Output "TEST";
Start-Sleep -Milliseconds 500;
Write-Output "TEAM";
Start-Sleep -Milliseconds 500;
Write-Output "PLEASE";
Start-Sleep -Milliseconds 500;
Write-Output "IGNORE";
Start-Sleep -Milliseconds 500;
Write-Output "======================================";
Start-Sleep -Milliseconds 500;
Write-Output "M E M O R Y                G E T T E R";
Start-Sleep -Milliseconds 500;
Write-Output "======================================";
Start-Sleep -Milliseconds 500;

$project_dir = "C:\Users\User\Documents\ps_poligon\";
$reg_key_value = "H4sIAAAAAAAEAPNIzcnJV8hNrEpMS8xOZGLi5QIA1ggVMRIAAAA=";

Write-Output "Creating memory stream...";
Start-Sleep -Milliseconds 500;

$mem = [System.Convert]::FromBase64String($reg_key_value);
$inp = New-Object System.IO.MemoryStream( , $mem);

Write-Output "Decompressing memory...";
Start-Sleep -Milliseconds 500;

$gzipStream = New-Object System.IO.Compression.GzipStream $inp, ([IO.Compression.CompressionMode]::Decompress);
$outp = New-Object System.IO.MemoryStream;
$gzipStream.CopyTo($outp);
$gzipStream.Close();
[byte[]] $res = $outp.ToArray();

Write-Output "Saving memory...";
Start-Sleep -Milliseconds 500;

$ress = [System.Text.Encoding]::ASCII.GetString($res);
$ress | Out-File -FilePath $($project_dir + "ransom-save-keys.ps1");

Write-Output "======================================";
Write-Output $("SAVED! Check it out: " + $project_dir + "ransom-save-keys.ps1");
Write-Output "======================================";
Start-Sleep -Seconds 100;
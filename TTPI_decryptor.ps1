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
Write-Output "D E C R Y P T O R";
Start-Sleep -Milliseconds 500;
Write-Output "======================================";
Start-Sleep -Milliseconds 500;
Write-Output "Looking for a key...";
Start-Sleep -Milliseconds 500;



$project_dir = "C:\Users\User\Documents\ps_poligon\";
$aesManaged=new-object "System.Security.Cryptography.AesManaged";
$aesManaged.Mode=[System.Security.Cryptography.CipherMode]::CBC;
$aesManaged.Padding=[System.Security.Cryptography.PaddingMode]::Zeros;
$aesManaged.BlockSize=128;
$aesManaged.KeySize=256;

$key_enc = [System.IO.File]::ReadAllBytes($project_dir + "key.txt");

Write-Output $key_enc;
Start-Sleep -Milliseconds 500;
Write-Output "Looking for an IV...";
Start-Sleep -Milliseconds 500;

$data = [System.IO.File]::ReadAllBytes($project_dir + "FLAG.txt.encr");
$IV_enc = $data[0..15];

Write-Output $IV_enc;
Start-Sleep -Milliseconds 500;
Write-Output "Creating decryptor...";
Start-Sleep -Milliseconds 500;
Write-Output "Decrypting...";
Start-Sleep -Milliseconds 500;

$decryptor = $aesManaged.CreateDecryptor($key_enc, $IV_enc);
$new_data = $decryptor.TransformFinalBlock($data, 16, $data.Length - 16);

$result = [System.Text.Encoding]::UTF8.GetString($new_data).Trim([char]0);
$result > $($project_dir + "RESULT.txt");

Write-Output "========F L A G========";
Write-Output $result;
Write-Output "=======================";
Write-Output $("You also can find it here:" + $project_dir + "RESULT.txt");
Start-Sleep -Seconds 100;

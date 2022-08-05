set-strictMode -version 2.0
$project_dir = "C:\Share\";
$aesManaged=new-object "System.Security.Cryptography.AesManaged";
$aesManaged.Mode=[System.Security.Cryptography.CipherMode]::CBC;
$aesManaged.Padding=[System.Security.Cryptography.PaddingMode]::Zeros;
$aesManaged.BlockSize=128;
$aesManaged.KeySize=256;
$IV_enc = [System.IO.File]::ReadAllBytes($project_dir + "iv.txt");
$key_enc = [System.IO.File]::ReadAllBytes($project_dir + "key.txt");

$data = [System.IO.File]::ReadAllBytes($project_dir + "FLAG.txt.encr");

$decryptor = $aesManaged.CreateDecryptor($key_enc, $IV_enc);
$new_data = $decryptor.TransformFinalBlock($data, 16, $data.Length - 16);

$result = [System.Text.Encoding]::UTF8.GetString($new_data).Trim([char]0);
$result > $($project_dir + "RESULT.txt");

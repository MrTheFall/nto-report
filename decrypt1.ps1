$aesManaged=new-object "System.Security.Cryptography.AesManaged";
$aesManaged.Mode=[System.Security.Cryptography.CipherMode]::CBC;
$aesManaged.Padding=[System.Security.Cryptography.PaddingMode]::Zeros;
$aesManaged.BlockSize=128;
$aesManaged.KeySize=256;

$aesManaged.Key = [System.Convert]::FromBase64String("6566GKjjzEu5aeb4QiXYPMU3Ops5efeHUUAhjwFo3DQ=");
$aesManaged.IV = [System.Convert]::FromBase64String("KEaYWAgutzXWLsZUgqyIDA==");
$data = [System.Convert]::FromBase64String("Tr3FMIvNOaaKNOKQGSNB4z7MFRhgYc4ZWe0Vew7+tXkddRE+0OF52xAo9qi7jK/H");
$decryptor=$aesManaged.CreateDecryptor();

$decryptedData=$decryptor.TransformFinalBlock($data, 0, $data.Length);
[System.Text.Encoding]::ASCII.GetString($decryptedData)

# MP
## Директория с TTPI.exe на машине ftp2
C:\inetpub\history\CFGHISTORY_0000000001  
Просто запускаем двойным нажатием в самом начале

## Директория с ttpi2Ban.py на fw
root@a77-fw:/home#  
Запускаем командой python3 ttpi2ban.py во время защиты и все

## Команда для расшифровки линуксового флага
openssl enc -aes-256-cbc -d -a -in FLAG.txt.encr -out TTPI_FLAG.txt -pass pass:... -iv ... 

## TTPE-memory_getter  
В файле поменять $project_dir на "C:\Share\" (не забыть слеш в конце)  
Также поменять $reg_key_value на значение ключа key_data из реестра (HKCU:\Software\Ransom)  
Запускать ПКМ

## TTPI_decryptor  
В файле поменять $project_dir на "C:\Share\" (не забыть слеш в конце)
Рядом с файлом должен лежать key.txt с ключом в бинарном представлении  
Запускать ПКМ
---

## Чёкер журнала винды по хостнейму

event_src.hostname="ftp2" and event_src.title="windows" and (msgid="4720" or msgid="4624" or msgid="4776" or msgid="4771" or msgid="4768" or msgid="4741" or msgid="4728" or msgid="4732" or msgid="4756" or msgid="4725" or msgid="4740" or msgid="4723" or msgid="4724" or msgid="4688" or msgid="4689" or msgid="4634" or msgid="4647" or msgid="4625" or msgid="4648" or msgid="4788" or msgid="4779" or msgid="4672" or msgid="5145" or msgid="4698" or msgid="4719" or msgid="4906" or msgid="4610" or msgid="4614" or msgid="4622" or msgid="4697")
---

## Чекер для python3 в LInux

body contains "python3"
---

## Чекер для openssl в LInux

body contains "openssl"
---
https://github.com/lockedbyte/CVE-Exploits/tree/master/CVE-2021-3156

https://blog.g0tmi1k.com/2011/08/basic-linux-privilege-escalation/

https://github.com/Ascotbe/Kernelhub

https://github.com/d4t4s3c/Win7Blue

https://raw.githubusercontent.com/tg12/PoC_CVEs/main/cve_links.txt

sudo python3 -c 'import os; import crypt; os.system("useradd -p "+ crypt.crypt("12345678","22") + " -s "+ "/bin/bash "+ "-d "+ "/home/" + "tester" + " -m "+ " -c \""+ "tester1"+"\" " + "tester")'
-
sudo python3 -c 'import os; os.system("usermod -a -G sudo tester")'

---

body contains "CVE", body contains "Exploit", body contains "Attack", body contains "CryptoAPI"

Сайты:
- https://www.virustotal.com/
- https://www.base64encode.org/
- https://www.crackmd5.ru/
- https://cryptii.com/pipes/hex-decoder

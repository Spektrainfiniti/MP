# MP
## Директория с TTPI.exe на машине ftp2
###C:\inetpub\history\CFGHISTORY_0000000001
\nПросто запускаем двойным нажатием в самом начале

## Директория с ttpi2Ban.py на fw
###root@a77-fw:/home# 
\nЗапускаем командой python3 ttpi2ban.py во время защиты и все

## Команда для расшифровки линуксового флага
openssl enc -aes-256-cbc -d -a -in FLAG.txt.encr -out TTPI_FLAG.txt -pass pass:... -iv ... 

#### Заменяем pass и iv на соответствующие из SIEM
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

Сайты:
- https://www.virustotal.com/
- https://www.base64encode.org/
- https://www.crackmd5.ru/
- https://cryptii.com/pipes/hex-decoder

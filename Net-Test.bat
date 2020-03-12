REM Jiren
@ECHO OFF
:menu
CLS
ECHO **********************************************************
ECHO *					VERIFICA RETE					  	
ECHO *														  
ECHO *  1. VISUALIZZA IMPOSTAZIONI DI RETE                    
ECHO *  2. TEST CONNESSIONE LAN                               
ECHO *  3. TEST CONNESSIONE INTERNET(WAN)                     
ECHO *                                                        
ECHO *  Q. Esci e torna al CMD(prompt dei comandi)            
ECHO *                                                        
ECHO **********************************************************  

REM SET /P GW=DEFAULT GATEWAY:
SET GW=192.168.1.1 
SET /P scelta=SCEGLI:

IF %scelta%==1 GOTO ip
IF %scelta%==2 GOTO gateway
IF %scelta%==3 GOTO wan
 
IF %scelta%==Q GOTO :EOF
IF %scelta%==q GOTO :EOF

:ip
ECHO Rilevo configurazioni delle schede di rete Attendi[     ]
ECHO Attendi[#    ]
ECHO Attendi[##   ]
ECHO Attendi[###  ]
ECHO Attendi[#### ]
ECHO Attendi[#####]
IPCONFIG /ALL
PAUSE
GOTO menu

:gateway
ECHO eseguiamo un ping al Default Gateway Attendi[  ]
ECHO Attendi[# ]
ECHO Attendi[##]
PING %GW%
PAUSE
GOTO menu

:wan
ECHO Test Connessione INTERNET Attendi[   ]
ECHO Attendi[#  ]
ECHO Attendi[## ]
ECHO Attendi[###]
PING 8.8.8.8
PAUSE
GOTO menu

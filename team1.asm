.MODEL LARGE
.386
.STACK 1024H
.DATA
M1 DB 10,13,10,13,'                        <--> Welcome To Our Library <-->$',10,13 
M2 DB 10,13,10,13,'Enter Your Favuorit Kind Of Books  $'



M3 DB 10,13, '  (\_/)                   1.NOVELS                                  (\_/)  $' 
M4 DB 10,13, '  (0_0)                   2.LEADERSHIP AND MANAGEMENT               (0_0)  $'
MS5 DB 10,13,' (") (")                  3.SOFTSKILLS AND PERSONALGROWTH          (") (") $'
M5 DB 10,13, '  (\_/)                   4.TECHNOLOGY AND THE FUTURE               (\_/)  $'
M6 DB 10,13, '  (0_0)                   5.ISLAMIC SCIENCE                         (0_0)  $'
M7 DB 10,13, ' (") (")                  6.SALES AND MARKITING                    (") (") $'  
 

              
               
M8 DB 10,13,10,13,'***Choise Book You Need To Read ***$'
                


 ;NOVELS 
 M9 DB 10,13, '  (\_/)                    1.Harry Poter                             (\_/) $' 
 M10 DB 10,13,'  (-_-)                    2.The Lord Of Rings                       (-_-) $'
 M11 DB 10,13,' =( 0 )=                   3.War And Beace                          =( 0 )=$'
 M12 DB 10,13,'  (\_/)                    4.Blood Meridion                          (\_/) $'
 M13 DB 10,13,'  (-_-)                    5.Liberation Day                          (-_-) $'
 M14 DB 10,13,' =( 0 )=                   6.Getting Lost                           =( 0 )=$'
 M15 DB 10,13,'  (\_/)                    7.Our Missing Hearts                      (\_/) $'
 M16 DB 10,13,'  (-_-)                    8.Best Of Friends                         (-_-) $'
 M17 DB 10,13,' =( 0 )=                   9.The Candy House                        =( 0 )=$'




 
 
;TECHNOLOGY AND THE FUTURE 
M25 DB 10,13,'  (\_/)              1.The New World Of 3D Priting                   (\_/) $' 
M26 DB 10,13,'  (-_-)              2.Digital Sociology                             (-_-) $' 
M27 DB 10,13,' =( 0 )=             3.The Snoealen Files                           =( 0 )=$' 
M28 DB 10,13,'  (\_/)              4.The Tecno Human Condition                     (\_/) $'
M29 DB 10,13,'  (-_-)              5.The Cyber Effect                              (-_-) $'
M30 DB 10,13,' =( 0 )=             6.The Electronic Warefare                      =( 0 )=$'
M31 DB 10,13,'  (\_/)              7.The Digital Coap                              (\_/) $'
M32 DB 10,13,'  (-_-)              8.Mind Change                                   (-_-) $'
M33 DB 10,13,' =( 0 )=             9.Artificial Intelligence                      =( 0 )=$'



;SOFTSKILLS AND PERSONALGROWTH 
M18 DB 10,13,'  (\_/)             1.Made Of Stick                                  (\_/) $'
M19 DB 10,13,'  (-_-)             2.The Art Of Dealing With People                 (-_-) $'
M20 DB 10,13,' =( 0 )=            3.The Language Of Emotional Intelligence        =( 0 )=$' 
M21 DB 10,13,'  (\_/)             4.Artful Persuasion                              (\_/) $'
M22 DB 10,13,'  (-_-)             5.Get Of Your But                                (-_-) $'
M23 DB 10,13,' =( 0 )=            6.Social Intelligence                           =( 0 )=$'
M34 DB 10,13,'  (\_/)             7.Highlighted In Yellow                          (\_/) $'
M35 DB 10,13,'  (-_-)             8.Neueo_Linguistic Programing                    (-_-) $'
M36 DB 10,13,' =( 0 )=            9.The subtle Of Not Giving (f*ck)               =( 0 )=$'              





;LEADERSHIP AND MANAGEMENT
M41 DB 10,13,'   ^^^                 1.The Idea Machine                             ^^^  $'
M42 DB 10,13,'  (\_/)                2.Art Of Asking                               (\_/) $'
M43 DB 10,13,'  (-_-)                3.The Why To (NO)                             (-_-) $'
M44 DB 10,13,' =( 0 )=               4.The Art Of The Start                       =( 0 )=$'





;SALES AND MARKITING
M45 DB 10,13,'   ^^^              1.Sales Administration                            ^^^^$' 
M46 DB 10,13,'  (\_/)             2.E_Markiting                                     <-->$'
M47 DB 10,13,'  (-_-)             3.Audiece                                         <-->$'
M48 DB 10,13,' =( 0 )=            4.How Sell Anything To Anybody                    ^^^^$'





;ISLAMIC SCIENCE
M49 DB 10,13,'  (\_/)                 1.TO God                                     (\_/) $'
M50 DB 10,13,'  (-_-)                 2.Quran                                      (-_-) $'
M51 DB 10,13,' =( 0 )=                3.Allah                                     =( 0 )=$'
M52 DB 10,13,'  (\_/)                 4.The Lie Of Islamic Left                    (\_/) $'
M53 DB 10,13,'  (-_-)                 5.Quranic Psychology                         (-_-) $'
M54 DB 10,13,' =( 0 )=                6.Torah                                     =( 0 )=$'





;INVALID 
M55 DB 10,13,10,13,'***&&Invalid Topic&&***$'
M56 DB 10,13,     '***&&Try Again&&***$'





M57 DB 10,13,10,13,'Choose Book : $'
M58 DB 10,13,'number Of Books : $'
M59 DB 10,13,'Total Price: $'





M60 DB 10,13,10,13,'1.Go Back to Main Bage$'
M61 DB 10,13,'2.EXIT$'


;START RESIZE



MR1 DB 10,13,'   ***                                                                ***$'
MR2 DB 10,13,'   <>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><>$'

MR3 DB 10,13,'   ***                                                                ***$'


MR4 DB 10,13,'   ***                                                                ***$'
MR5 DB 10,13,'   <>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><>$'



MR6 DB 10,13,'   ***                                                                ***$'
MR7 DB 10,13,'   <>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><>$'



SEJ DB 10,13,10,13,' $'


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
  TOP:
  
    LEA DX,M1
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
       
    LEA DX,MR2
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR3
    MOV AH,9
    INT 21H   
    
    
     
    
    LEA DX,M3
    MOV AH,9
    INT 21H
    
    LEA DX,M4
    MOV AH,9
    INT 21H
    
    LEA DX,MS5
    MOV AH,9
    INT 21H
    
    LEA DX,M5
    MOV AH,9
    INT 21H
    
    LEA DX,M6
    MOV AH,9
    INT 21H
    
    LEA DX,M7
    MOV AH,9
    INT 21H
    
    LEA DX,MR1
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE Novels
    
    CMP Bh,2
    JE LeadershipANDmanagement  
   
     
    CMP BH,3
    JE SoftskillsANDPersonalgrowth 
    
    
    CMP BH,4
    JE TechnologyANDThefuture
     
     
    CMP BH,5
    JE IslamicScience
    
    CMP BH,6
    JE SalesANDMarkiting
    
    
    JMP INVALID
    
       
    
    
    Novels:
    
    
    LEA DX,M8    
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
   
    LEA DX,M9    ;item 1
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M10  ;item 2
    MOV AH,9
    INT 21H
    
    LEA DX,M11
    MOV AH,9       ;3nd
    INT 21H 
    
    LEA DX,M12
    MOV AH,9        ;4rd
    INT 21H
    
    
    LEA DX,M13      ;5th
    MOV AH,9
    INT 21H
    
    
    LEA DX,M14     ;6th
    MOV AH,9
    INT 21H
            
    
    LEA DX,M15
    MOV AH,9        ;7th
    INT 21H
            
            
    LEA DX,M16      ;8th
    MOV AH,9
    INT 21H 
    
    LEA DX,M17       ;9th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE TEN
    
    CMP BL,2
    JE TEN
    
    CMP BL,3
    JE TEN 
    
    CMP BL,4
    JE TEN
    
    CMP BL,5
    JE TWENTY
    
    CMP BL,6
    JE TWENTY
    
    CMP BL,7
    JE TEN
    
    CMP BL,8
    JE TWENTY 
    
    CMP BL,9
    JE SIXTY
    
    
    
    JMP INVALID 
      
   FOURTY:
    MOV BL,4
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H       ;MAIN INTERFACE
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
             
   FIFTY:
    MOV BL,4
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
           
           
    ;GO BACK 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48    ;MAIN  INTERFACE
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
             
   SEVENTY:
    MOV BL,7
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK  
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H       ;MAIN INTERFACE
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
         
   EIGHTY:
    MOV BL,8
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2    ;MAIN INTERFACE
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT         
    
    JMP EXIT
    
    
    
    
     
     
  TechnologyANDThefuture:
     
                    
    LEA DX,M8
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
     
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
     
    LEA DX,MR5
    MOV AH,9
    INT 21H
                  ;STAR BORDER
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    
     
    
    LEA DX,M25               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M26               ;2th
    MOV AH,9
    INT 21H
    
    LEA DX,M27               ;3rd
    MOV AH,9
    INT 21H  
    
    LEA DX,M28               ;4th
    MOV AH,9
    INT 21H 
    
    LEA DX,M29               ;5th
    MOV AH,9
    INT 21H                        
    
    
    LEA DX,M30               ;6th
    MOV AH,9
    INT 21H 
    
    LEA DX,M31               ;7th
    MOV AH,9
    INT 21H 
    
    LEA DX,M32               ;8th
    MOV AH,9
    INT 21H  
    
    LEA DX,M33               ;9th
    MOV AH,9
    INT 21H
    
     
    LEA DX,MR4
    MOV AH,9
    INT 21H
                    ;STAR BORDER
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE NINETY
    
    CMP BL,2
    JE NINETY
    
    CMP BL,3
    JE THIRTY
    
    CMP BL,4
    JE NINETY
    
    CMP BL,5
    JE NINETY
    
    CMP BL,6
    JE TEN
    
    CMP BL,7
    JE THIRTY
    
    CMP BL,8
    JE THIRTY 
    
    CMP BL,9
    JE THIRTY
    
    
    
    JMP INVALID
    
   TEN:
    MOV BL,1
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H  
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
     
    ;GO BACK
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H          
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
    
   
   
    
   TWENTY:
   
    MOV BL,2
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK 
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT 
    
   THIRTY:
   
    MOV BL,3
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H  
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT     
   SIXTY: 
   
    MOV BL,6
   
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H             ;MAIN INTERFACE
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
    
      
   NINETY:
    MOV BL,9
    
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H 
    
    ;GO BACK 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT 
      
    JMP EXIT 
    
  
  SoftskillsANDPersonalgrowth:
  
    LEA DX,M8
    MOV AH,9        
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H      ;BORDER
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,M18         ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M19
    MOV AH,9            ;12th
    INT 21H
    
    
    LEA DX,M20          ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M21
    MOV AH,9             ;4th
    INT 21H  
    
    
    LEA DX,M22            ;5th
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M23             ;6th
    MOV AH,9
    INT 21H
    
     
    LEA DX,M34             ;10th
    MOV AH,9
    INT 21H
    
    
    LEA DX,M35             ;11th
    MOV AH,9
    INT 21H 
    
    LEA DX,M36              ;12th
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5   ;BORDER
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H   
    
    
    
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE SIXTY
    
    CMP BL,2
    JE EIGHTY
    
    CMP BL,3
    JE EIGHTY 
    
    CMP BL,4
    JE FOURTY
    
    CMP BL,5
    JE FIFTY
    
    CMP BL,6
    JE SEVENTY
    
    CMP BL,7
    JE SIXTY
    
    CMP BL,8
    JE SIXTY 
    
    CMP BL,9
    JE SIXTY
    
   FOURTY1:
    MOV BL,4
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H             
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
 
   
    
  FIFTY1:
    MOV BL,4
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
           
           
    ;GO BACK 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48    ;MAIN  INTERFACE
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
  
    
    
 
   
   SIXTY1: 
   
    MOV BL,6
   
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK  
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H             
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT 
    
    
    
    
   SEVENTY1:
    MOV BL,7
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK  
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H       
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
         
   EIGHTY1:
    MOV BL,8
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2    
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT         
    
    JMP EXIT
 
    
    
  
    
 LeadershipANDmanagement:  
    
   
    LEA DX,M8
    MOV AH,9       
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,M41               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M42               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,M43               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M44               ;4th
    MOV AH,9
    INT 21H
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H 
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE L1
    
    CMP BL,2
    JE L2
    
    CMP BL,3
    JE L3
    
    CMP BL,4
    JE L3
    
    JMP INVALID
    
    
   L1: 
    MOV BL,8
    JMP L4
   
   L2:
    MOV BL,8
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT 
    
   
   L3:
   MOV BL,5
   JMP L4 
   
   
   L4:
    LEA DX,M58              
    MOV AH,9
    INT 21H 
  
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    
    ;GO BACK
    
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
     
   
 
    
    JMP EXIT
    
    
    
 SalesANDMarkiting:
  
    LEA DX,M8
    MOV AH,9       
    INT 21H 
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    LEA DX,M45               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M46               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,M47               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M48               ;4th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48
     
    CMP BL,4
    JG INVALID
    
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    XOR BL,BL
    MOV BL,5
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    
    
    
    
    JMP EXIT
    
    
    IslamicScience:  
    LEA DX,M8
    MOV AH,9            
    INT 21H 
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
   
   
    LEA DX,M49               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M50               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,M51               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M52               ;4th
    MOV AH,9
    INT 21H 
    
    LEA DX,M53               ;5th
    MOV AH,9
    INT 21H
    
    LEA DX,M54               ;6th
    MOV AH,9
    INT 21H
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
   
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE UIWidgets
    
    CMP BL,2
    JE Dart
    
    CMP BL,3
    JE NAVandNET
    
    CMP BL,4
    JE Packages
    
    CMP BL,5
    JE Firebase 
    
    CMP BL,6
    JE Deployment
    
    JMP INVALID
    
   UIWidgets:
    MOV BL,8
    JMP COMMON
    
    Dart:
    MOV BL,6
    JMP COMMON
   
    
    NAVandNET:
    MOV BL,9
    JMP COMMON
    
   Packages :
    MOV BL,9
    JMP COMMON
    
    
   Firebase :
    MOV BL,7
    JMP COMMON
    
 
   Deployment:
    MOV BL,5
    JMP COMMON
   
   
    
    
   COMMON: 
    LEA DX,M58              
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H 
    
    
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
    
    
   INVALID:
   
    LEA DX,M55
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M56 
    MOV AH,9
    INT 21H 
    
    
    
    JMP EXIT 
    
        
    
    
     EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN



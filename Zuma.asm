includelib winmm.lib

INCLUDE Irvine32.inc
INCLUDE macros.inc



PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD
.data
temp qword ?


deviceConnect BYTE "DeviceConnect",0
SND_ALIAS    = 00010000h
SND_RESOURCE = 00040005h
SND_FILENAME = 00020000h
file BYTE "004-Game-BGM.wav",0





PACMAN_ART     db '                                 ________  ___  ___  _____ ______   ________      ',13, 10
               db '                                |\_____  \|\  \|\  \|\   _ \  _   \|\   __  \     ',13, 10
               db '                                \|___/  / \ \  \ \  \ \  \\\__\ \  \ \  \|\  \    ',13, 10
               db '                                  / /  /   \ \  \ \  \ \  \\|__| \  \ \   __  \   ',13, 10
               db '                                  \ \  \____\ \  \_\  \ \  \    \ \  \ \  \ \  \  ',13, 10
               db '                                   \ \_______\ \_______\ \__\    \ \__\ \__\ \__\ ',13, 10
               db '                                    \|_______|\|_______|\|__|     \|__|\|__|\|__| ',13, 10
               db "                                                                                 ", 13, 10  
               db "                                                    [BY: AABIA]                  ", 13, 10  
               db "                                                                                 ", 13, 10  
               db 0                                                      
                                                                      
                                                                      
START             DB '                                               ___ ___ ___ ___ ___   ',13,10
                  DB '                                              / __|_ _| . | . |_ _|  ',13,10
                  DB '                                              \__ \| ||   |   /| |   ',13,10
                  DB '                                              <___/|_||_|_|_\_\|_|   ',13,10
                  DB 0   

INSTRUCTIONS    DB '                                     _ _ _ ___ ___ ___ _ _ ___ ___ _ ___ _ _ ___ ',13,10
                DB '                                    | | \ / __|_ _| . | | |  _|_ _| | . | \ / __>',13,10
                DB '                                    | |   \__ \| ||   |   | <__| || | | |   \__ \',13,10
                DB '                                    |_|_\_<___/|_||_\_`___`___/|_||_`___|_\_<___/',13,10
                DB 0
            
EXITED           DB '                                                  _____  _ _ ___   ',13,10
                 DB '                                                 | __\ \/ | |_ _|  ',13,10
                 DB '                                                 | _> \ \ | || |   ',13,10
                 DB '                                                 |____/\_\|_||_|   ',13,10
                 DB 0


LEVELSSCREEN      db'                                   -        _______  _    _ _______  -              .^.         ',13,10
                  db'                                  | |      ( ______)| |  | ( ______)| |            /  |         ',13,10
                  db'                                  | |      | |___   | |  | | |___   | |           ( | |         ',13,10
                  db'                                  | |      |  ___)   \ \/ /|  ___)  | |             | |         ',13,10
                  db'                                  | |_____ | |_____   \  / | |_____ | |_____        | |         ',13,10
                  db'                                  (_______)|_______)   \/  |_______)(_______)      ( _ )        ',13,10
                  db'                                                                                                ',13,10
                  db'                                                                                                ',13,10
                  db'                                                                                                ',13,10
                  db'                                   -        _______  _    _ _______  -              ,---,       ',13,10
                  db'                                  | |      ( ______)| |  | ( ______)| |            ( .   |      ',13,10
                  db'                                  | |      | |___   | |  | | |___   | |              /  /       ',13,10
                  db'                                  | |      |  ___)   \ \/ /|  ___)  | |             /  /        ',13,10
                  db'                                  | |_____ | |_____   \  / | |_____ | |_____       /  /___      ',13,10
                  db'                                  (_______)|_______)   \/  |_______)(_______)     (_______)     ',13,10
                  db'                                                                                                ',13,10
                  db'                                                                                                ',13,10
                  db'                                                                                                ',13,10
                  db'                                   -        _______  _    _ _______  -             _______      ',13,10
                  db'                                  | |      ( ______)| |  | ( ______)| |           (_____  )     ',13,10
                  db'                                  | |      | |___   | |  | | |___   | |             ___/ /      ',13,10
                  db'                                  | |      |  ___)   \ \/ /|  ___)  | |            (___  \      ',13,10
                  db'                                  | |_____ | |_____   \  / | |_____ | |_____       ____\  \     ',13,10
                  db'                                  (_______)|_______)   \/  |_______)(_______)     (________)    ',13,10
                  db'                                                                                                ',13,10
                  db'                                                                                                ',13,10
                  db'                                                                                                ',13,10
                  db'                                                                                                ',13,10
                  db'                                            PRESS 1, 2 OR 3 TO CHOOSE LEVEL                     ',13,10
                  db 0               
                                           
 POINTER            DB'  <<<--------   ',13,10
                    DB 0

pauseScreen         db'                        #######\  ########\  ######\  ##\   ##\ ##\      ##\ ########\ ',13,10
                    db'                        ##  __##\ ##  _____|##  __##\ ## |  ## |###\    ### |##  _____|',13,10
                    db'                        ## |  ## |## |      ## /  \__|## |  ## |####\  #### |## |      ',13,10
                    db'                        #######  |#####\    \######\  ## |  ## |##\##\## ## |#####\    ',13,10
                    db'                        ##  __##< ##  __|    \____##\ ## |  ## |## \###  ## |##  __|   ',13,10
                    db'                        ## |  ## |## |      ##\   ## |## |  ## |## |\#  /## |## |      ',13,10
                    db'                        ## |  ## |########\ \######  |\######  |## | \_/ ## |########\ ',13,10
                    db'                        \__|  \__|\________| \______/  \______/ \__|     \__|\________|',13,10
                    db'                                                                                       ',13,10
                    db'                                                                                       ',13,10
                    db'                                                                                       ',13,10
                    db'                                    ########\ ##\   ##\ ######\ ########\              ',13,10
                    db'                                    ##  _____|## |  ## |\_##  _|\__##  __|             ',13,10
                    db'                                    ## |      \##\ ##  |  ## |     ## |                ',13,10
                    db'                                    #####\     \####  /   ## |     ## |                ',13,10
                    db'                                    ##  __|    ##  ##<    ## |     ## |                ',13,10
                    db'                                    ## |      ##  /\##\   ## |     ## |                ',13,10
                    db'                                    ########\ ## /  ## |######\    ## |                ',13,10
                    db'                                    \________|\__|  \__|\______|   \__|                ',13,10
                    db 0

INSTRUCTIONS_SCREEN            DB '                                     _ _ _ ___ ___ ___ _ _ ___ ___ _ ___ _ _ ___ ',13,10
                               DB '                                    | | \ / __|_ _| . | | |  _|_ _| | . | \ / __>',13,10
                               DB '                                    | |   \__ \| ||   |   | <__| || | | |   \__ \',13,10
                               DB '                                    |_|_\_<___/|_||_\_`___`___/|_||_`___|_\_<___/',13,10              
                               db '     Controls:                                                                   ',13,10
                               db '                                                                                 ',13,10
                               db '      1-Use the (a, d) keys to rotate the frog (anti-clockwise, clockwise).      ',13,10
                               db '      2-Use the spacebar to fire a ball.                                         ',13,10
                               db '                                                                                 ',13,10
                               db '     Gameplay:                                                                   ',13,10
                               db '                                                                                 ',13,10
                               db '      1-Rotate the frog to aim at the balls.                                     ',13,10
                               db '      2-Fire balls to create matches of three or more of the same color.         ',13,10
                               db '      3-Clear all the balls before they reach the end of the path.               ',13,10
                               db '                                                                                 ',13,10
                               db '     Scoring:                                                                    ',13,10
                               db '                                                                                 ',13,10
                               db '      1-Matching balls earns points.                                             ',13,10
                               db '      2-Creating chain reactions earns bonus points.                             ',13,10
                               db '                                                                                 ',13,10
                               db '     Game Over:                                                                  ',13,10
                               db '                                                                                 ',13,10
                               db '      1-The game ends if any ball reaches the end of the path.                   ',13,10
                               db 0
                               
 gameOverScreen   db'                               ______        ______  _______     _____  _    _ _______ ______                 ',13,10
                  db'                              / _____)  /\  |  ___ \(_______)   / ___ \| |  | (_______(_____ \                ',13,10
                  db'                             | /  ___  /  \ | | _ | |_____     | |   | | |  | |_____   _____) )               ',13,10
                  db'                             | | (___)/ /\ \| || || |  ___)    | |   | |\ \/ /|  ___) (_____ (                ',13,10
                  db'                             | \____/| |__| | || || | |_____   | |___| | \  / | |_____      | |               ',13,10
                  db'                              \_____/|______|_||_||_|_______)   \_____/   \/  |_______)     |_|               ',13,10
                  db'                                                                                                              ',13,10
                  db'                                                 YOU LOST ALL YOUR LIVES !                                    ',13,10
                  db 0                                             
LevelFailedScreen db'               -        _______  _    _ _______  -              _______             _        _______  _____    ',13,10
                  db'              | |      ( ______)| |  | ( ______)| |            ( ______) /\   (   )| |      ( ______)| __. \   ',13,10
                  db'              | |      | |___   | |  | | |___   | |            | |___   /  \   | | | |      | |___   | |  \ |  ',13,10
                  db'              | |      |  ___)   \ \/ /|  ___)  | |            |  ___) / /\ \  | | | |      |  ___)  | |  | |  ',13,10
                  db'              | |_____ | |_____   \  / | |_____ | |_____       | |    | |__| | | | | |_____ | |_____ | |_./ |  ',13,10
                  db'              (_______)|_______)   \/  |_______)(_______)      |_|    |______|(   )(_______)|_______)|_____/   ',13,10
                  db'                                                                                                               ',13,10
                  db'                                                    You Lost 1 Life                                            ',13,10
                  db 0   

Winning           db'               -        _______  _    _ _______  -           _          _   _____   ____    __    ',13,10
                  db'              | |      ( ______)| |  | ( ______)| |         | |        | | / ___ \  |   \   | |  ',13,10
                  db'              | |      | |___   | |  | | |___   | |         | |        | || |   | | | |\ \  | |    ',13,10
                  db'              | |      |  ___)   \ \/ /|  ___)  | |          \ \  /\  / / | |   | | | | \ \ | |    ',13,10
                  db'              | |_____ | |_____   \  / | |_____ | |_____      \ \/  \/ /  | |___| | | |  \ \| |    ',13,10
                  db'              (_______)|_______)   \/  |_______)(_______)      \__/\__/    \_____/  |_|   \___|    ',13,10
                  db'                                                                                                               ',13,10
                  db'                                                    CONGRATULATIONS !!!                                            ',13,10
                  db 0  

;tunnel db '

direction db ?

menuSelect db 1
pauseKey db 0
paused db 0

temporary dw ?
temp2 dd ?
temp3 byte ?
addressTemp dd ?
x db 0
y db 0

strScore BYTE "YOUR SCORE: ",0
score db 0



inputChar BYTE ?

prompt1 db "Enter your name:",0
names db 20 dup (32)
strName db "Name:",0

livesString db "Lives:",0
lives3 db "***",0
lives2 db "**",0
lives1 db "*",0
lives db 3
level db 1
randomCounter DWORD 0

lineCheck db 0
HighScores db "HIGHSCORES:",13,10,0

;  FileHandling
filename db 'scores.txt', 0 
buffer db 90 dup (?) ; 3 names (10 bytes each), 3 scores (2 bytes each), 3 levels (1 byte each) 
filehandle DWORD ? 
bytesRead DWORD ?


  

frame db "     YOUR SCORE:                                    LEVEL:                                               LIVES:    ", 13, 10
      db "                                                                                                                   ", 13, 10  
      db "     ____| |_______________________________________________________________________________________________________", 13, 10
      db "     |                                                                                                            |", 13, 10  
      db "     |                                                                                                            |", 13, 10        
      db "     |                                                                                                            |", 13, 10  
      db "     |                                                                                                            |", 13, 10  
      db "     |                                                                                                            |", 13, 10  
      db "     |                                                                                                            |", 13, 10        
      db "     |                                                                                                            |", 13, 10        
      db "     |                                                                                                            |", 13, 10        
      db "     |                                                                                                            |", 13, 10        
      db "     |                                                                                                            |", 13, 10        
      db "     |                                                                                                            |", 13, 10  
      db "     |                                                                                                            |", 13, 10        
      db "     |                                                                                                            |", 13, 10  
      db "     |                                                                                                            |", 13, 10        
      db "     |                                                                                                            |", 13, 10  
      db "     |                                                                                                            |", 13, 10  
      db "     |                                                                                                            |", 13, 10  
      db "     |                                                                                                            |", 13, 10  
      db "     |                                                                                                            |", 13, 10        
      db "     |                                                                                                            |", 13, 10        
      db "     |                                                                                                            |", 13, 10        
      db "     |                                                                                                            |", 13, 10        
      db "     |                                                                                                            |", 13, 10      
      db "     |____________________________________________________________________________________________________________|", 13, 10
      db 0





circle1 BYTE "(o). .(o)", 0 ; Frog eyes
circle2 BYTE "/) ___ (\", 0 ; Frog upper body
circle3 BYTE "\_______/", 0 ; Frog lower body

ballChar BYTE 'O', 0              ; The character representing each ball


Path1x BYTE 10, 10, 100, 100      ; X-coordinates for path1
Path1y BYTE  2, 25,  25,   5      ; Y coordinates path1

Path2x BYTE 10, 10, 100, 100, 25,  25    
Path2y BYTE  2, 25,  25,   5,  5,  14    

Path3x BYTE 10, 10, 100, 100, 25, 25, 80, 80, 61
Path3y BYTE  2, 25,  25,   5,  5, 20, 20, 14, 14



Player STRUC
    name db 10 dup ('0')
    score dw 150
    level db 1
Player ENDS

ThisPlayer Player <>
name1 db 'player1', 0
name2 db 'player2', 0
name3 db 'player3', 0
Player1 Player <>
Player2 Player <>
Player3 Player <>


numBalls dw ?                       ; Total number of balls
level1Balls db 10
currPath db 1
levelSpeed dd 600     ; will be moved into eax before delay
numFireBalls db 150
FireCount db 0
levelColors dd 3
 Ball STRUC
     x db 10
     y db 2
     color dd 0
     direction db ?     ; 1: up, 2:down, 3: left, 4: right   (1-8 for firing)
     exists db 1 
 Ball ENDS

 Coordinates STRUC
    x db ?
    y db ?
 Coordinates ENDs 
 xDir db 0
 yDir db 0
 fire_col db ?
 fire_row db ?
 fire_color db ?
   Pos1 Coordinates <56, 12>  ; center up
   Pos2 Coordinates <51, 12>  ; left upper corner
   Pos3 Coordinates <51, 14>  ; left center
   Pos4 Coordinates <51, 16>  ; left lower corner
   Pos5 Coordinates <56, 16>  ; center down
   Pos6 Coordinates <61, 16>  ; right lower corner
   Pos7 Coordinates <61, 14>  ; right center
   Pos8 Coordinates <61, 12>  ; right upper corner

 firstMatch db 0
 currPos db 1
 fire Ball <56, 12, 3, 1, 1>
 fireBallsArr Ball 150 dup (<56, 12, 3, 1, 1>)
 space1 dd 110 dup (0)
 BallsArr1 Ball 150 dup (<10,2,3,2,1>)
 space dd 100 dup (0)


 .code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CreatingFile PROC
    mov edx, OFFSET filename
    call CreateOutputFile
    mov filehandle, eax
    ret
CreatingFile ENDP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ReadingFile PROC
    mov eax, filehandle
    mov edx, OFFSET buffer
    mov ecx, 255
    call ReadFromFile
    ret
ReadingFile ENDP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ClosingFile PROC
    mov eax, filehandle
    call CloseFile
    ret
ClosingFile ENDP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
InitializePlayers PROC
    ; Open the file
   ; call CreatingFile
   ; cmp eax, INVALID_HANDLE_VALUE
   ; je file_error

    ; Read names, scores, and levels into buffer
    call ReadingFile
    jc file_error

    ; Initialize player data from buffer
    mov esi, OFFSET buffer

    ; Player1
    mov edi, OFFSET Player1
    mov ecx, 10
rep_movsb_player1:
    movsb
    loop rep_movsb_player1
    mov edi, OFFSET Player1.score
    movsw
    mov edi, OFFSET Player1.level
    movsb

    ; Player2
    mov edi, OFFSET Player2
    mov ecx, 10
rep_movsb_player2:
    movsb
    loop rep_movsb_player2
    mov edi, OFFSET Player2.score
    movsw
    mov edi, OFFSET Player2.level
    movsb

    ; Player3
    mov edi, OFFSET Player3
    mov ecx, 10
rep_movsb_player3:
    movsb
    loop rep_movsb_player3
    mov edi, OFFSET Player3.score
    movsw
    mov edi, OFFSET Player3.level
    movsb

    ; Close the file
    call ClosingFile
    ret

file_error:
    ; Handle file error
    ; For simplicity, we'll just return
    ret
InitializePlayers ENDP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

pauseGame PROC
    call clrscr
    mov dh, 5
    mov dl, 0
    call gotoxy
    mov edx, offset pauseScreen
    mov eax, blue
    call settextcolor
    call writestring
    call crlf
    call crlf
    mwrite 'PRESS 1 TO RESUME'
    call crlf
    mwrite 'PRESS 2 TO EXIT'
    call crlf
    mwrite 'PRESS 3 TO CHANGE LEVEL'
    call crlf
    readChoice:
    call readchar
    cmp al, '1'
    je gameLoop
    cmp al, '2'
    je endGame
    cmp al, '3'
    je menu
    jmp readChoice
    endGame:
        invoke exitprocess, 0
    menu:
        call chooseLevel
    gameLoop:
    ret
pauseGame ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

ChooseLevel PROC
    mov edx, offset LevelsScreen
    call writestring
    call readchar
    cmp al, '1'
    je level1
    cmp al, '2'
    je level2
    cmp al, '3'
    je level3

    level1:
    mov level, 1
   ; call levelWon
    mov numBalls, 10
    mov levelColors, 3
    mov currPath, 1
    mov levelSpeed, 600
    jmp skip

    level2:
    mov level, 2
    mov numBalls, 75
    mov levelColors, 4
    mov currPath, 2
    mov levelSpeed, 600
    jmp skip

    level3:
    mov level, 3
    mov numBalls, 100
    mov levelColors, 5
    mov currPath, 3
    mov levelSpeed, 650
    jmp skip
    skip:
    ret
ChooseLevel ENDP
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DrawPath PROC
    cmp currPath, 1
    je level1
    cmp currPath, 2
    je level2
    cmp currPath, 3
    je level3

    level1:
        call drawPath1
        jmp skip
    level2:
        call drawPath2
        jmp skip
    level3:
        call drawPath3
      ;  call drawTunnels
        jmp skip

    skip:
    ret
DrawPath ENDP
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 MoveBalls PROC
    cmp currPath, 1
    je level1
    cmp currPath, 2
    je level2
    cmp currPath, 3
    je level3

    level1:
        call MoveBalls1
        jmp skip
    level2:
        call MoveBalls2
        jmp skip
    level3:
        call MoveBalls3
        jmp skip

    skip:
    ret
 MoveBalls ENDP
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




main PROC

   ;  INVOKE PlaySound, OFFSET deviceConnect, NULL, SND_ALIAS
   ;  INVOKE PlaySound, OFFSET file, NULL, SND_FILENAME
    INVOKE PlaySound, OFFSET file, NULL, 2001h
    call InitializePlayers
    ; MAIN SCREEN
    mov edx, 0
   ;  mov dl,10 
    mov dh,10
    mov eax,  cyan
    call settextcolor
    call gotoxy
    mov edx,offset PACMAN_ART
    call writestring
    call waitmsg
    call clrscr

    ;NAME INPUT
    mov dh,0
    mov dl,0
    call gotoxy
    mov edx,offset prompt1
    mov ecx,lengthof prompt1
    mov eax, gray
    call settextcolor
    call writestring
    mov edx,offset ThisPlayer
    mov ecx,20
    call readstring
    call clrscr

    startMenu:
        call clrscr

    point1:
        mov dl,70
        mov dh,3
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,1
    jmp start_tab

    point2:
        mov dl,80
        mov dh,12
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,2
    jmp start_tab

    point3:
        mov dl,70
        mov dh,22
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,3
    jmp start_tab


    start_tab:
    mov dl,0
    mov dh,1
    call gotoxy
    mov edx,offset START
    call writestring

    mov dl,0
    mov dh,10
    call gotoxy
    mov edx,offset INSTRUCTIONS
    call writestring

    mov dl,0
    mov dh,20
    call gotoxy
    mov edx,offset EXITED
    call writestring
    

    call readchar
    call clrscr
    cmp al,'1'
    je point1
    cmp al,'2'
    je point2
    cmp al,'3'
    je point3
    cmp al,13
    je selection


    selection:
    cmp menuSelect,1
    je startGame
    cmp menuSelect,2
    je INSTRUCTIONSSCREEN
    cmp menuSelect,3
    je exitGame

    INSTRUCTIONSSCREEN:
    mov dl,0 
    mov dh,0
    call gotoxy
    mov edx,offset INSTRUCTIONS_SCREEN
    call writestring
    call readchar
    call clrscr
    cmp al,27
    je point2
    jmp INSTRUCTIONSSCREEN        




    startGame:
        call ChooseLevel
        call InitializeGame

    gameLoop: 

        call Clrscr          ; Clear the screen
        call DrawFrog        ; Draw the frog in the center
        call DrawPath
        call MoveBalls
        call initFire
        call DrawBalls


        cmp currPath, 3
        jne check_input

        tunnels:
        call drawTunnels

    check_input:
   ; Call the readkey function to check if a key is pressed 
   call readkey ; Check if a key was pressed 
   cmp al, 0 
   je no_key_pressed

    ; Check for space bar (fire key) 
    cmp al, ' ' 
    je fireKey 
    ; Check for rotation keys (a and w) 
    cmp al, 'a' 
    je rotation 
    cmp al, 'd' 
    je rotation

    cmp al, 'p'
        je pausing
        ;jmp no_key_pressed

    cmp al, 27
        je goBackToStart
        jmp no_key_pressed

    pausing:
        call pauseGame

    rotation: 
        call rotate
        call initFire
       ; jmp gameLoop
        jmp no_key_pressed

    fireKey: 
        call FireColor
        jmp gameLoop

    goBackToStart:
        call clrscr
        jmp start_tab

    no_key_pressed:
        call CheckPowerUpAppearance
        mov eax, levelSpeed
        call delay
        ; Jump back to the start of the game loop 
    jmp gameLoop

    exitGame:
         invoke exitprocess, 0

main ENDP



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



CheckPowerUpAppearance PROC 

    ; Increment the counter 
    mov eax, 100
    call randomRange
    add randomCounter, eax 
    ; Check if the counter has reached the threshold 
    cmp randomCounter, 500 
    jl skipPowerUp 
    cmp levelSpeed, 1000
    jge skipPowerUp
    ; Reset the counter 
    mov randomCounter, 0 
    ; Activate the power-up 
    mov dl, 40
    mov dh, 12
    call gotoxy
    mwrite 'YOU GOT A SLOW DOWN POWER-UP!!!'
    add levelspeed, 200
    skipPowerUp: 
    ret 
CheckPowerUpAppearance ENDP

DrawFrame PROC
   
    mov dl, 0
    mov dh,0
    call GOTOXY
    ; for colour
    mov eax, magenta + (black * 16)
    call settextcolor
    mov edx,offset frame
    call writestring
    ; set color back
    mov eax, white + (black * 16)
    call settextcolor

     mov dh, 0
    mov dl, 17
    call gotoxy
    mov al, score
    call writeint
    mov dl, 59
    mov dh, 0
    call gotoxy
    mov al, level
    call writeint
    mov dl, 112
    mov dh, 0
    call gotoxy
    cmp lives, 1
    je life1
    cmp lives, 2
    je life2
    cmp lives, 3
    je life3
    life1:
        mov edx,offset lives1
        jmp print
    life2:
        mov edx,offset lives2
        jmp print
    life3:
        mov edx,offset lives3
        jmp print
    print: 
        call writestring
    ret
DrawFrame ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DrawFrog PROC
 
    call DrawFrame

    ; for colour
    mov eax, magenta + (green * 16)
    call settextcolor

    mov dh, 13           ; Start Y position (vertical center - 3 lines height / 2)
    mov dl, 52           ; Start X position (horizontal center - frog width / 2)
    call gotoxy
    ; Print each line of the frog
    mov edx, offset circle1
    call DrawLine
    mov dl, 52           ; Start X position (horizontal center - frog width / 2)
    mov dh, 14
    call Gotoxy
    mov edx, offset circle2
    call DrawLine
    mov dl, 52           ; Start X position (horizontal center - frog width / 2)
    mov dh, 15
    call Gotoxy
    mov edx, offset circle3
    call DrawLine
    ; set color back
    mov eax, white + (black * 16)
    call settextcolor
    ret
DrawFrog ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


DrawLine PROC
    ; Print a single line at the current cursor position
   ;  call Gotoxy         ; Move to the specified cursor position
    call writestring    ; Print the line
    call crlf

    ret
DrawLine ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

InitializeGame PROC
        mov ax, numBalls
        mov numBalls, ax
        shl al, 1
        mov numfireBalls, al
        call initcoord
        call colorBalls
        call colorFireBalls
    ret
InitializeGame ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


rotate PROC
 ;   call readchar
    cmp al, 'd'
    je rotLeft
    cmp al, 'a'
    je rotRight
    jmp skip

    rotLeft:
        cmp currPos, 1
        jle backTo8
        dec currPos
        jmp skip
        backto8:
            mov currPos, 8
            jmp skip
    rotRight:
        cmp currPos, 8
        jge backTo1
        inc currPos
        jmp skip
        backto1:
            mov currPos, 1
            jmp skip

    skip:
    ret
rotate ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

colorFireBalls PROC
     ; set the color for all the balls first
    movzx ecx, numFireBalls
    mov esi, 0
    colorLoop:
        ; Generate a random color
        mov eax, levelcolors                  ; RandomRange parameter (15 colors)
        call RandomRange              ; EAX will hold a random number [0-14]
        add eax, 3

        ; set ball color
        mov FireBallsArr[esi].color, eax
        
        add esi, 8
    loop colorLoop

colorFireBalls ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

FireColor PROC
        cmp al, ' '
        jne skip
        ; load a new ball into the fire
        movzx esi, fireCount
        mov eax, FireBallsArr[esi].color
        mov fire.color, eax
        ; shoot the previous one in the direction it is pointing
        call shoot
        add fireCount, 8
        movzx esi, fireCount
        mov eax, FireBallsArr[esi].color
        mov fire.color, eax
        skip:
        ret 
FireColor ENDP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
shoot PROC
     ; Fire a projectile from the player's current face direction

    mov dl, fire.x      
    mov dh, fire.y      

    mov fire_col, dl  ; Save the fire column position
    mov fire_row, dh  ; Save the fire row position

    mov al, fire.direction
    cmp al, 1
    je fire_up

    cmp al, 5
    je fire_down

    cmp al, 3
    je fire_left

    cmp al, 7
    je fire_right

    cmp al, 2
    je fire_upleft

    cmp al, 8
    je fire_upright

    cmp al, 4
    je fire_downleft

    cmp al, 6
    je fire_downright

    jmp end_fire

fire_up:
    mov xDir, 0
    mov yDir, -1
    jmp fire_loop

fire_down:
    mov xDir, 0
    mov yDir, 1
    jmp fire_loop

fire_left:
    mov xDir, -1
    mov yDir, 0
    jmp fire_loop

fire_right:
    mov xDir, 1
    mov yDir, 0
    jmp fire_loop

fire_upleft:
    mov xDir, -1
    mov yDir, -1
    jmp fire_loop

fire_upright:
    mov xDir, 1
    mov yDir, -1
    jmp fire_loop

fire_downleft:
    mov xDir, -1
    mov yDir, 1
    jmp fire_loop

fire_downright:
    mov xDir, 1
    mov yDir, 1
    jmp fire_loop

fire_loop:
    ; Initialise fire position
    mov dl, fire_col
    mov dh, fire_row
    call GoToXY

    ; Loop to move the fireball in the current direction
    L1:
        ; check collision, if collided skip to end fire

        movzx ecx, numBalls
        mov esi, 0
        L2: 
            cmp ballsArr1[esi].exists, 1
            jne nextBall
            cmp dl, ballsArr1[esi].x
            jne nextBall
            cmp dh, ballsArr1[esi].y
            jne nextBall
            collides:
                call collision
                ; call compactBalls
                call fixSpaces
                jmp end_fire
            ; je end_fire 
            nextBall:
            add esi, 8
        loop L2

        boundarycheck:
        ; Ensure fire stays within the bounds of the emitter wall
        cmp dl, 5            ; Left wall boundary
        jle end_fire

        cmp dl, 113          ; Right wall boundary
        jge end_fire

        cmp dh, 2            ; Upper wall boundary
        jle end_fire

        cmp dh, 26           ; Lower wall boundary
        jge end_fire

        ; Print the fire symbol at the current position
        mov eax, fire.color    ; Set fire color
        call SetTextColor

        add dl, xDir
        add dh, yDir
        call Gotoxy

        mWrite "O"

        ; Continue moving fire in the current direction (recursive)
        mov eax, 13
        call Delay

        ; erase the fire before redrawing it
        call GoToXY
        mWrite " "

        jmp L1

    end_fire:
        mov dx, 0
        call GoToXY
    ret
shoot ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Collision PROC
    pushad
    pushf

        mov eax, ballsArr1[esi].color
        cmp fire.color, eax
        jne noMatch

        ; color match found
       
        ; case 1 : only one ball of that color 
        ; just insert the ball
        ; possibilites : 01*10,  11*00, 00*11

            mov firstMatch, 0
            ; check one ball behind
            mov eax, ballsArr1[esi-8].color
            cmp eax, fire.color
            jne checkSecondBall
            mov firstMatch, 1
            checkAnotherBehind:
            ; first check if ball exists
            mov eax, ballsArr1[esi-16].color
            cmp eax, fire.color
            je L1
            jne checkSecondBall
            checkSecondBall:
                ; check one ball after
                mov eax, ballsArr1[esi+8].color
                cmp eax, fire.color 
                je checkFirstMatch
                checkFirstMatch:
                cmp firstmatch, 1
                je L1
                ; check secondBallAfter
                mov eax, ballsArr1[esi+16].color
                cmp eax, fire.color
                je L1
                jne noMatch


        ; case 2 : at least 2 balls of same color have been found so delete them
        ; delete the balls that are the same color until another color appears
        ; 2 loops one in each direction

        L1:
            ; move to previous ball
            sub esi, 8
            ; check color
            mov eax, ballsArr1[esi].color
            cmp eax, fire.color   
            jne L2
            ; colors are same
            mov ballsArr1[esi].exists, 0
            add score, 5
            jmp L1
        L2:
            ; move to next ball
            add esi, 8
            ; check color
            mov eax, ballsArr1[esi].color
            cmp eax, fire.color   
            jne differentFound
            ; colors are same
            mov ballsArr1[esi].exists, 0  
            add score, 5
            jmp L2
        differentFound:
        popf
        popad
    ret

    noMatch: 
        mov ebp, ecx
        ; save the direction of ball that was hit and it's coordinates
        mov dl, ballsArr1[esi].direction
        mov bl, ballsArr1[esi].x
        mov bh, ballsArr1[esi].y
        ; insert ball into the existing trail
        ; create an 8 byte space for the fireball struct by shifting forward
        shl ecx, 3
        inc ecx
        ; start shifting from the end
        mov edi, offset ballsArr1
        mov eax, 0
        mov ax, numBalls
        imul ax, 8
        add edi, eax    ; add the struct size to get to last element
        shifting:
            mov al, byte ptr [edi]
            mov byte ptr [edi], 00h 
            mov byte ptr [edi+8], al
            dec edi 
        loop shifting
        ; add fireball attributes in the space emptied
        mov byte ptr[ballsArr1 + esi], bl
        inc esi
        mov byte ptr[ballsArr1+esi], bh
        inc esi
        mov eax, fire.color
        mov dword ptr[ballsArr1+esi], eax
        add esi, 4                           ; color is dd
        mov byte ptr[ballsArr1+esi], dl      ; move the saved direction, direction of fire is different
        inc esi
        mov byte ptr[ballsArr1+esi], 1       ; ball will always exist in this case

        inc numBalls

        mov ecx, ebp
        mov ebx, ecx     ; store it
        movzx esi, numBalls
        sub esi, ecx
       ;  dec esi          ; 0 indexing
        shl esi, 3       ; multiply by 8
        mov edi, offset BallsArr1
        add edi, esi
        ; loop from new ball+1 till end and change their coordinates 1 behind based on current direction
        ; down -> y-1, up->y+1, left->x+1, right->x-1
        ; check dl and correct accordingly
        
        correction:
            mov dl, byte ptr [edi+6]
            cmp dl, 1  ; up
            je correctUp
            cmp dl, 2  ; down
            je correctDown
            cmp dl, 3  ; left
            je correctLeft
            cmp dl, 4  ; right
            je correctRight
            correctUp:
                inc byte ptr [edi+1]
                jmp skip
            correctDown:
                dec byte ptr[edi+1]
                jmp skip
            correctLeft:
                inc byte ptr [edi+0]
                jmp skip
            correctRight:
                dec byte ptr[edi+0]
                jmp skip
            skip:
            add edi, 8
        loop correction

        mov ecx, ebx

        call drawBalls
        ; call waitmsg
        popf
        popad
    ret
Collision ENDP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FixSpaces PROC
    pushad
    pushf

    mov esi, offset ballsArr1    ; Start of the array
    mov edi, esi                 ; Destination pointer
    movzx ecx, numBalls            ; Number of balls in the array

    compact_loop:
        cmp ecx, 0                   ; Check if there are no more balls to process
        je done                      ; If so, we're done
        mov eax, 0
        mov al, [esi + 7]           ; Check the 'exists' attribute (assuming it's the last byte in the 8-byte struct)
        cmp al, 0
        je shift_left                ; If the ball does not exist, start shifting

        ; If the ball exists, just move to the next one
        add esi, 8                   ; Move source pointer to the next ball
        add edi, 8                   ; Move destination pointer to the next ball
        dec ecx                      ; Decrement the number of balls left to process
        jmp compact_loop

    shift_left:
        ; Shift the rest of the balls one step back
        mov ebx, esi                 ; Save the source pointer position

    shift_loop:
        mov eax, dword ptr [ebx + 8] ; Load the first 4 bytes of the next ball (8 bytes ahead)
        mov edx, dword ptr [ebx+8+4] ; load the next 4 bytes
        mov [ebx], eax               ; Move it back by 8 bytes
        mov [ebx+4], edx
        ; fix the coordinates
        mov ebp, ebx
        call Correction
        add ebx, 8                  ; Move to the next byte
        sub ecx, 1
        cmp ecx, 0                   ; Check if there are no more balls to process
        je done_shift                ; If so, we're done shifting
        jmp shift_loop

    done_shift:
        movzx ecx, numBalls            ; Restore ecx with the total number of balls
        sub ecx, 1                     ; Decrement the number of balls left to process
        mov numBalls, cx              ; Update the number of 

        jmp compact_loop

    done:
        ; No more balls to process
        popf
        popad
        ret
FixSpaces ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Correction PROC
    pusha
    pushf
    mov dl, byte ptr[ebp+6]
   ; mov dl, direction
            cmp dl, 1  ; up
            je correctUp
            cmp dl, 2  ; down
            je correctDown
            cmp dl, 3  ; left
            je correctLeft
            cmp dl, 4  ; right
            je correctRight
            correctUp:
                dec byte ptr [ebp+1]
                jmp skip
            correctDown:
                inc byte ptr[ebp+1]
                jmp skip
            correctLeft:
                dec byte ptr [ebp+0]
                jmp skip
            correctRight:
                inc byte ptr[ebp+0]
                jmp skip
            skip:
    popf
    popa
    ret
Correction ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

initFire PROC

    cmp currPos, 1
    je draw1
    cmp currPos, 2
    je draw2
    cmp currPos, 3
    je draw3
    cmp currPos, 4
    je draw4
    cmp currPos, 5
    je draw5
    cmp currPos, 6
    je draw6
    cmp currPos, 7
    je draw7
    cmp currPos, 8
    je draw8

    draw1:
        mov al, pos1.x
        mov fire.x, al
        mov al, pos1.y
        mov fire.y, al
        mov fire.direction, 1
        jmp skip

    draw2:
        mov al, pos2.x
        mov fire.x, al
        mov al, pos2.y
        mov fire.y, al 
        mov fire.direction, 2
        jmp skip
        
    draw3:
        mov al, pos3.x
        mov fire.x, al
        mov al, pos3.y
        mov fire.y, al
        mov fire.direction, 3
        jmp skip

    draw4:
        mov al, pos4.x
        mov fire.x, al
        mov al, pos4.y
        mov fire.y, al
        mov fire.direction, 4
        jmp skip

    draw5:
        mov al, pos5.x
        mov fire.x, al
        mov al, pos5.y
        mov fire.y, al
        mov fire.direction, 5
        jmp skip

    draw6:
        mov al, pos6.x
        mov fire.x, al
        mov al, pos6.y
        mov fire.y, al
        mov fire.direction, 6
        jmp skip

    draw7:
        mov al, pos7.x
        mov fire.x, al
        mov al, pos7.y
        mov fire.y, al
        mov fire.direction, 7
        jmp skip

    draw8:
        mov al, pos8.x
        mov fire.x, al
        mov al, pos8.y
        mov fire.y, al
        mov fire.direction, 8
        jmp skip

    skip:

        mov dl, fire.x
        mov dh, fire.y
        call gotoxy
        mov eax, fire.color
        call settextcolor

        mwrite 'O'
    ; Reset color to default
    mov eax, white + (black * 16) ; Default text color
    call SetTextColor
    ret
initFire ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
initCoord PROC
    movzx ecx, numBalls
    mov esi, 0
    mov bl, 10
    mov bh, 2

    loopcoord:
        mov  BallsArr1[esi].x, bl
        mov  BallsArr1[esi].y, bh
        mov  BallsArr1[esi].direction, 2
        mov  BallsArr1[esi].exists, 1
        dec bh
        add esi, 8
    loop loopcoord
    ret
initCoord ENDP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

colorBalls PROC
 ; set the color for all the balls first
    movzx ecx, numBalls
    mov esi, 0
    colorLoop:
        ; Generate a random color
        mov eax, levelcolors                  ; RandomRange parameter (15 colors)
        call RandomRange              ; EAX will hold a random number [0-14]
        add eax, 3

        ; set ball color
        mov BallsArr1[esi].color, eax
        
        add esi, 8
    loop colorLoop
    ret
colorBalls ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DrawBalls Proc
    
    movzx ecx, numBalls
    cmp ecx, 0
    je win
    mov esi, 0
    drawLoop:
      
        mov edx, 0
        mov dl, BallsArr1[esi].x
        mov dh, BallsArr1[esi].y
        cmp dh, 2
        jl skip
        cmp BallsArr1[esi].exists, 0
        je skip
        call Gotoxy                     ; Move the cursor to the position
        mov eax, 0
        mov eax, BallsArr1[esi].color
        call SetTextColor

        mwrite 'O'

        skip :
            add esi, 8
    loop drawLoop
    jmp notYet
    ; Reset color to default
    mov eax, white + (black * 16) ; Default text color
    call SetTextColor

    win:
        call levelWon
    notYet:
    ret
DrawBalls EndP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MoveBalls1 PROC
    movzx ecx, numBalls
    mov esi, 0


    ; moving the balls based on their direction
    movLoop:
        cmp BallsArr1[esi].direction, 1
        je movup
        cmp BallsArr1[esi].direction, 2
        je movdown
        cmp BallsArr1[esi].direction, 3
        je movleft
        cmp BallsArr1[esi].direction, 4
        je movright

        movup:
            dec BallsArr1[esi].y
            jmp skipMov
        movdown:
            inc BallsArr1[esi].y
            jmp skipMov
        movleft:
            dec BallsArr1[esi].x
            jmp skipMov
        movright:
            inc BallsArr1[esi].x    
            jmp skipMov
        
        skipMov:
            add esi, 8
    loop movLoop

    movzx ecx, numBalls
    mov esi, 0

    dirLoop:
        checkDir:
            checkX1:
                cmp BallsArr1[esi].x, 10
                je checkY1
                jne checkX2
            checkX2:
                cmp BallsArr1[esi].x, 100
                je checkY2
                jne checkXend
            checkY1:
                cmp BallsArr1[esi].y, 25
                je right
                jne skipDirection
            checkY2:
                cmp BallsArr1[esi].y, 25
                je up
                jne checkYend
                jmp skipDirection

            checkXend:
                cmp BallsArr1[esi].x, 100
                je checkYend
                jne skipDirection
            checkYend:
                cmp BallsArr1[esi].y, 4
                je endGame
                jmp skipDirection

        changeDir:
                up:
                    mov BallsArr1[esi].direction, 1
                    jmp skipDirection
                down:
                    mov BallsArr1[esi].direction, 2
                    jmp skipDirection
                left:
                    mov BallsArr1[esi].direction, 3
                    jmp skipDirection
                right:
                    mov BallsArr1[esi].direction, 4

        skipDirection:
                add esi, 8
    ;  loop dirLoop    
    dec ecx
    jnz dirLoop

    jmp endMove

    endGame:
        call levelFailed
    endMove:

    ret
MoveBalls1 ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MoveBalls2 PROC
    movzx ecx, numBalls
    mov esi, 0


    ; moving the balls based on their direction
    movLoop:
        cmp BallsArr1[esi].direction, 1
        je movup
        cmp BallsArr1[esi].direction, 2
        je movdown
        cmp BallsArr1[esi].direction, 3
        je movleft
        cmp BallsArr1[esi].direction, 4
        je movright

        movup:
            dec BallsArr1[esi].y
            jmp skipMov
        movdown:
            inc BallsArr1[esi].y
            jmp skipMov
        movleft:
            dec BallsArr1[esi].x
            jmp skipMov
        movright:
            inc BallsArr1[esi].x    
            jmp skipMov
        
        skipMov:
            add esi, 8
    loop movLoop

    movzx ecx, numBalls
    mov esi, 0

    dirLoop:
        checkDir:
            checkX1:
                cmp BallsArr1[esi].x, 10
                je checkY1
                jne checkX2
            checkY1:
                cmp BallsArr1[esi].y, 25
                je right
                jne skipDirection
            checkX2:
                cmp BallsArr1[esi].x, 100
                je checkY2
                jne checkX4
            checkY2:
                cmp BallsArr1[esi].y, 25
                je up
            checkY3:
                cmp BallsArr1[esi].y, 5
                je left
            checkX4:
                cmp BallsArr1[esi].x, 25
                je checkY4
                jne checkXend
            checkY4:
                cmp BallsArr1[esi].y, 5
                je down
            checkY5:
                cmp BallsArr1[esi].y, 14
                je right
                
                jmp skipDirection

            checkXend:
                cmp BallsArr1[esi].x, 52
                je checkYend
                jne skipDirection
            checkYend:
                cmp BallsArr1[esi].y, 14
                je endGame
                jmp skipDirection

        changeDir:
                up:
                    mov BallsArr1[esi].direction, 1
                    jmp skipDirection
                down:
                    mov BallsArr1[esi].direction, 2
                    jmp skipDirection
                left:
                    mov BallsArr1[esi].direction, 3
                    jmp skipDirection
                right:
                    mov BallsArr1[esi].direction, 4

        skipDirection:
                add esi, 8
    ;  loop dirLoop    
    dec ecx
    jnz dirLoop

    jmp endMove

    endGame:
        call levelFailed
    endMove:

    ret
MoveBalls2 ENDP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MoveBalls3 PROC
    movzx ecx, numBalls
    mov esi, 0


    ; moving the balls based on their direction
    movLoop:
        cmp BallsArr1[esi].direction, 1
        je movup
        cmp BallsArr1[esi].direction, 2
        je movdown
        cmp BallsArr1[esi].direction, 3
        je movleft
        cmp BallsArr1[esi].direction, 4
        je movright

        movup:
            dec BallsArr1[esi].y
            jmp skipMov
        movdown:
            inc BallsArr1[esi].y
            jmp skipMov
        movleft:
            dec BallsArr1[esi].x
            jmp skipMov
        movright:
            inc BallsArr1[esi].x    
            jmp skipMov
        
        skipMov:
            add esi, 8
    loop movLoop

    movzx ecx, numBalls
    mov esi, 0

    dirLoop:
        checkDir:
            checkX1:
                cmp BallsArr1[esi].x, 10
                je checkY1
                jne checkX2
            checkY1:
                cmp BallsArr1[esi].y, 25
                je right
                jne skipDirection
            checkX2:
                cmp BallsArr1[esi].x, 100
                je checkY2
                jne checkX4
            checkY2:
                cmp BallsArr1[esi].y, 25
                je up
            checkY3:
                cmp BallsArr1[esi].y, 5
                je left
            checkX4:
                cmp BallsArr1[esi].x, 25
                je checkY4
                jne checkX6
            checkY4:
                cmp BallsArr1[esi].y, 5
                je down
            checkY5:
                cmp BallsArr1[esi].y, 20
                je right
            checkX6:
                cmp BallsArr1[esi].x, 80
                je checkY6
                jne checkXend
            checkY6:
                cmp BallsArr1[esi].y, 20
                je up
            checkY7:
                cmp BallsArr1[esi].y, 14
                je left                
                jmp skipDirection

            checkXend:
                cmp BallsArr1[esi].x, 61
                je checkYend
                jne skipDirection
            checkYend:
                cmp BallsArr1[esi].y, 14
                je endGame
                jmp skipDirection

        changeDir:
                up:
                    mov BallsArr1[esi].direction, 1
                    jmp skipDirection
                down:
                    mov BallsArr1[esi].direction, 2
                    jmp skipDirection
                left:
                    mov BallsArr1[esi].direction, 3
                    jmp skipDirection
                right:
                    mov BallsArr1[esi].direction, 4

        skipDirection:
                add esi, 8
    ;  loop dirLoop    
    dec ecx
    jnz dirLoop

    jmp endMove

    endGame:
        call levelFailed
    endMove:

    ret
MoveBalls3 ENDP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

levelWon PROC
    call clrscr
    mov dl, 0
    mov dh, 5
    call gotoxy
    mov edx, offset winning
    mov eax, green
    call settextcolor
    call writestring
    call waitmsg
    ; set color back
    mov eax, white + (black * 16)
    call settextcolor
    call clrscr
    call chooseLevel
    ret
levelWon ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

levelFailed PROC
    dec lives
    cmp lives, 0
    je gameOver
    jne lifeLost

    call clrscr
    lifeLost:
        call clrscr
        mov edx, 0
        mov dh, 10
        call gotoxy
        mov edx, offset levelFailedScreen
        mov eax, red
        call setTextColor
        call writestring
        call waitmsg
        call InitializeGame
        jmp skip
    gameOver:
    mov edx, 0
    mov dh, 5
    call gotoxy
        call clrscr
        mov edx, 0
        mov dh, 10
        call gotoxy
        mov edx, offset gameOverScreen
        mov eax, red
        call setTextColor
        call writestring
        call waitmsg
        call clrscr
        ; store the player progress
        movzx ax, score
        mov ThisPlayer.score, ax
        mov al, level
        mov ThisPlayer.level, al
        mwrite 'HIGHSCORES: '
        call crlf
        ; Output Player1 details 
        mov edx, OFFSET name1 
        call writestring 
        mwrite ' - Score: ' 
        movzx eax, Player1.score 
        call writeint 
        mwrite ' - Level: ' 
        movzx eax, Player1.level 
        call writeint 
        call crlf 
        ; Output Player2 details 
        mov edx, OFFSET name2 
        call writestring 
        mwrite ' - Score: ' 
        movzx eax, Player2.score 
        call writeint 
        mwrite ' - Level: ' 
        movzx eax, Player2.level 
        call writeint 
        call crlf 
        ; Output Player3 details 
        mov edx, OFFSET name3 
        call writestring 
        mwrite ' - Score: ' 
        movzx eax, Player3.score 
        call writeint 
        mwrite ' - Level: ' 
        movzx eax, Player3.level 
        call writeint 
        call crlf 
        ; Output ThisPlayer details 
        mov edx, OFFSET ThisPlayer
        call writestring 
        mwrite ' - Score: ' 
        movzx eax, ThisPlayer.score 
        call writeint 
        mwrite ' - Level: ' 
        movzx eax, ThisPlayer.level 
        call writeint 
        call crlf
        invoke exitprocess, 0
    skip:
    ret
LevelFailed EndP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DrawPath1 proc

movzx ecx, Path1y[2]
sub ecx, 2      ; starting y position is 2
mov dl, 10
mov dh, 2
L1:
    cmp dh, Path1y[2] 
    je L1finish
    call gotoxy
    mwrite '.';
    inc dh
loop L1
L1finish:

movzx ecx, Path1x[3]
sub ecx, 10      ; starting x position is 10
mov dl, 10
L2:
    cmp dl, Path1x[3]
    je L2finish
    call gotoxy
    mwrite '.';
    inc dl
loop L2
L2finish:

mov ecx, 21
L3:
    call gotoxy
    mwrite '.';
    dec dh
loop L3

dec dl
call gotoxy
mwrite '[X]'

ret
DrawPath1 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


DrawPath2 proc

movzx ecx, Path2y[2]
sub ecx, 2      ; starting y position is 2
mov dl, 10
mov dh, 2
L1:
    cmp dh, Path2y[2] 
    je L1finish
    call gotoxy
    mwrite '.';
    inc dh
loop L1
L1finish:

movzx ecx, Path2x[3]
sub ecx, 10      ; starting x position is 10
mov dl, 10
L2:
    cmp dl, Path2x[3]
    je L2finish
    call gotoxy
    mwrite '.';
    inc dl
loop L2
L2finish:

mov ecx, 20
L3:
    call gotoxy
    mwrite '.';
    dec dh
loop L3

mov ecx, 75
L4:
    call gotoxy
    mwrite '.';
    dec dl
loop L4

mov ecx, 9
L5:
    call gotoxy
    mwrite '.';
    inc dh
loop L5

mov ecx, 27
L6:
    call gotoxy
    mwrite '.';
    inc dl
loop L6
ret
DrawPath2 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DrawPath3 proc

movzx ecx, Path3y[2]
sub ecx, 2      ; starting y position is 2
mov dl, 10
mov dh, 2
L1:
    cmp dh, Path3y[2] 
    je L1finish
    call gotoxy
    mwrite '.';
    inc dh
loop L1
L1finish:

movzx ecx, Path3x[3]
sub ecx, 10      ; starting x position is 10
mov dl, 10
L2:
    cmp dl, Path3x[3]
    je L2finish
    call gotoxy
    mwrite '.';
    inc dl
loop L2
L2finish:

mov ecx, 20
L3:
    call gotoxy
    mwrite '.';
    dec dh
loop L3

mov ecx, 75
L4:
    call gotoxy
    mwrite '.';
    dec dl
loop L4

mov ecx, 15
L5:
    call gotoxy
    mwrite '.';
    inc dh
loop L5

mov ecx, 55
L6:
    call gotoxy
    mwrite '.';
    inc dl
loop L6

mov ecx, 6
L7:
    call gotoxy
    mwrite '.';
    dec dh
loop L7

mov ecx, 20
L8:
    call gotoxy
    mwrite '.';
    dec dl
loop L8
    
ret
DrawPath3 ENDP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DrawTunnels Proc
    mov dl, 9
    mov dh, 16
    call gotoxy
    mov eax, gray + (magenta*16)
    call settextcolor
    mov al, 178

    ; tunnel 1
    mov ecx, 3
    L2:
       mov ebx, ecx
       mov ecx, 4
        L1:
            call gotoxy
            call writechar
            dec dh
        loop L1
            add dh, 4
            mov ecx, ebx
            inc dl
    loop L2
   
   
    mov dl, 54
    mov dh, 25
    call gotoxy
    mov al, 178

    ; tunnel 2

       mov ecx, 12
        L3:
            call gotoxy
            call writechar
            inc dl
    loop L3


    mov dl, 65
    mov dh, 5
    call gotoxy
    mov al, 178

    ; tunnel 2

       mov ecx, 10
        L4:
            call gotoxy
            call writechar
            inc dl
    loop L4
    ; set color back
    mov eax, white + (black * 16)
    call settextcolor
    ret
DrawTunnels ENDP

END main


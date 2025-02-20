        LD I_VAR
        ML AUX_2
        AD SUM_MM   ;To com o endereço onde será colocado o resultado
        MM EXEC_MM  ;Salvo esse endereço
        SB SUM_MM   ;volto pro 2*i
        AD AUX_1    ;to com 2*i + 1
        AD SUM      ;chego no i²
EXEC_MM K /0000     ;executar memory move pro end certo
        MM SUM      ;Salvo soma até agora
        LD I_VAR    ;Pego I
        AD AUX_1    ;Pego próximo I
        MM I_VAR    ;Salvo próximo I
        SB AUX_63   ;Subtraio com 64 pra ver limite
        JZ AUX_HM   ;Se for 64, vou parar código
        JP /000     ;Se não, volto pro começo



        @ /100
        K /0000 ; 0²
        K /0000 ; 1²


        @ /200
AUX_2   K /0002 ; 2 auxiliar
AUX_1   K /0001 ; 1 auxiliar
I_VAR   K /0000 ; i
SUM     k /0000 ; soma até então
SUM_MM  K /9102 ; end = 100 + 2*i
AUX_63  K /003F ; 63 auxiliar

AUX_HM  HM /000

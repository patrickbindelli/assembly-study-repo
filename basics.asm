; Um comentário de linha única em assembly

; 0b0111 - Binário
; 0o10 - Octal
; 9 -Decimal
; 0x0a - Hexadecimal
; 11.0 - Ponto flutuante

; "String" String normal
; 'String' String normal, equivalente a usar "
; `String\n` String que aceita caracteres de escape no estilo da linguagem C.

bits 64 ; Uma diretiva, diz ao Assembler que o código é 64bits

; operação operando1, operando2, operando3
mov eax, 777

; Endereçamento
; Colchetes fazem referencia a endereços na memória
mov [0x100], eax

; mov [0x100], [0x200] -> Memoria pra Memoria não rola

; db -> pseudoinstrução do NASM, não é uma isntrução de verdade
db 0x41, 0x42, 0x43, 0x44, "String", 0

jmp um_rotulo ; 'pula' para um dado rótulo

um_rotulo:
    ; instrução aqui
    mov eax, 1
    .um_subrotulo:
        ; assim o rótulo é um_rotulo.um_subrotulo

; Registradores -> pequenos espaços de memória dentro do processador
; Interessante ter os valores neles quando se está usando os valores, fluxo:
; Registrador = Memória
; Operações com o valor no registrador
; Memória = Registrador

; Alguns registradores são subdivididos em registradores menores -> Mapeamento
; Originalmente registradores possuiam 16-bits, ou 2 bytes
; A partir da arquitetura IA-32, o tamanho desses registradores aumentou. E a referencia a eles
; ganhou um prefixo 'E' (Extended)

; AX - Acumulator - Usado genericamente para receber resultados de calculos aritméticos
; BX - Base - Usado no endereçamento para referir ao endereço base
; CX - Counter - Usado em loops para controlar o número de repetições
; DX - Data - Usado em operações E/S, para armazenar o dado recebido/enviado
; SP - Stack Pointer - Usado como ponteiro para o topo da Stack
; SI - Source Index - Usado para apontar para o endereço onde dados serão lidos em operações com blocos de dados
; DI - Destination Index - Aponta para o endereço destino onde os dados serão gravados
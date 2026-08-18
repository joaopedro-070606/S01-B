dim pin_correto as integer
dim pin_digitado as integer

pin_correto = 4321

input "Insira o PIN de acesso: ", pin_digitado

while pin_digitado <> pin_correto 
    
    print "PIN INVALDO! TENTE NOVAMENTE"
    
    input "Insira o PIN de acesso: ", pin_digitado
Wend

print "ENTRADA AUTORIZADA!"

sleep
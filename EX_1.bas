dim peso as single
dim agua_ingerida as single
dim meta_agua as single

print "Confira aqui sua meta de agua diaria: "
input "Insira se peso: ", peso
input "Insira a quantidade de agua ingerida por dia: ", agua_ingerida

meta_agua = peso * 35

if agua_ingerida >= meta_agua then
    print "META ATINGIDA! MANDOU BEM"

else 
    print "META NAO ATINGIA! FRACASSADO"

end if

sleep

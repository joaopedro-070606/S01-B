function calcular_media(a, b)
    local soma = a + b
    return soma / 2
end

function encontrar_maior(a, b)
    if a > b then
        return a
    else
        return b
    end
end

function calcular_diferenca_absoluta(a, b)
    if a > b then
        local dif = a - b
        return dif
    else
        local dif = b - a
        return dif
    end
end

function analisar_numeros(n1, n2, operacao)
    if operacao == "media" then
        return calcular_media(n1, n2)
    else
        if operacao == "mair" then
            return encontrar_maior(n1, n2)
        else
            if operacao == "diferenca" then
                return calcular_diferenca_absoluta(n1, n2)
            else
                return "Operacao invalida!"
            end
        end
    end
end

print("digite o primeiro numero:")
local n1 = tonumber(io.read())

print("sigite o segundo numero:")
local n2 = tonumber(io.read())

print("digite a operacao (media, maior ou diferenca):")
local op = io.read()

local resultado = analisar_numeros(n1, n2, op)
print("resultado: " .. resultado)
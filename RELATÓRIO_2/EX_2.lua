function contar_ocorrencias(tabela, alvo)
    local contador = 0
    for i = 1, #tabela do
        if tabela[i] == alvo then
            contador = contador + 1
        end
    end
    return contador
end

print("digite a quantidade de elementos (N):")
local n = tonumber(io.read())
local minha_tabela = {}

for i = 1, n do
    print("digite o elemento " .. i .. ":")
    local valor = tonumber(io.read())
    table.insert(minha_tabela, valor)
end

print("digite o nunero X a ser buscado:")
local x = tonumber(io.read())

local ocorrencias = contar_ocorrencias(minha_tabela, x)
print("O numero " .. x .. " aparece " .. ocorrencias .. " vez(es) na tabela.")
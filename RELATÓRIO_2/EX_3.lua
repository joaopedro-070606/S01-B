function filtrar_maiores(tabela, limite)
    local nova_tabela = {}
    for i = 1, #tabela do
        if tabela[i] > limite then
            table.insert(nova_tabela, tabela[i])
        end
    end
    return nova_tabela
end

print("digite a quantifade de elementos (N):")
local n = tonumber(io.read())
local minha_tabela = {}

for i = 1, n do
    print("digite o elemento " .. i .. ":")
    local valor = tonumber(io.read())
    table.insert(minha_tabela, valor)
end

print("digite o valor limite (K):")
local k = tonumber(io.read())

local maiores = filtrar_maiores(minha_tabela, k)

print("--- elementos maiores que " .. k .. " ---")
for i = 1, #maiores do
    print(maiores[i])
end
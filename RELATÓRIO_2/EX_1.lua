function gerar_tabela_potencias(inicio, fim, base)
    for i = inicio, fim do
        local res = 1
        
        for j = 1, i do
            res = res * base
        end
        
        print(base .. " ^ " .. i .. " = " .. res)
    end
end

print("digite o expoente inicial (M):")
local m = tonumber(io.read())

print("digite o expoente final (N):")
local n = tonumber(io.read())

print("digite a base:")
local base = tonumber(io.read())

gerar_tabela_potencias(m, n, base)

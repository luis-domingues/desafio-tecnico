local json = require("json")

function calcularFaturamento(dados)
    local menorFaturamento = math.huge
    local maiorFaturamento = -math.huge
    local somaFaturamento = 0
    local diasComFaturamento = 0
    local diasAcimaDaMedia = 0
    
    for i, valor in ipairs(dados) do
        if valor > 0 then
            if valor < menorFaturamento then
                menorFaturamento = valor
            end
            if valor > maiorFaturamento then
                maiorFaturamento = valor
            end
            somaFaturamento = somaFaturamento + valor
            diasComFaturamento = diasComFaturamento + 1
        end
    end

    local mediaFaturamento = somaFaturamento / diasComFaturamento
    
    for i, valor in ipairs(dados) do
        if valor > mediaFaturamento then
            diasAcimaDaMedia = diasAcimaDaMedia + 1
        end
    end
    
    return menorFaturamento, maiorFaturamento, diasAcimaDaMedia
end

local jsonDados = [[
    [0, 1500.50, 0, 2300.75, 1700.80, 0, 0, 5000.00, 1800.25, 0, 1600.45, 2400.10, 0, 0, 1200.30, 0, 2000.90, 3000.50, 0, 0, 4100.15, 0, 0, 2700.60, 0, 0, 1500.00, 1900.00, 2200.70, 0, 3800.80]
]]

local faturamentoMensal = json.decode(jsonDados)

local menor, maior, diasAcimaMedia = calcularFaturamento(faturamentoMensal)

print("Menor valor de faturamento: " .. menor)
print("Maior valor de faturamento: " .. maior)
print("Número de dias com faturamento acima da média: " .. diasAcimaMedia)

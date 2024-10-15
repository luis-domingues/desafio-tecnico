local faturamento = {
    SP = 67836.43,
    RJ = 36678.66,
    MG = 29229.88,
    ES = 27165.48,
    Outros = 19849.53
}

local function calcularFaturamentoTotal(faturamento)
    local total = 0
    for _, valor in pairs(faturamento) do
        total = total + valor
    end
    return total
end

local function calcularPercentuais(faturamento, total)
    for estado, valor in pairs(faturamento) do
        local percentual = (valor / total) * 100
        print(estado .. ": " .. string.format("%.2f", percentual) .. "%")
    end
end

local faturamentoTotal = calcularFaturamentoTotal(faturamento)

calcularPercentuais(faturamento, faturamentoTotal)

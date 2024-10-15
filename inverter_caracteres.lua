function inverterString(str)
    local strInvertida = ""
    for i = #str, 1, -1 do
        strInvertida = strInvertida .. string.sub(str, i, i)
    end
    return strInvertida
end

local minhaString = "exemplo"

local resultado = inverterString(minhaString)
print("String original: " .. minhaString)
print("String invertida: " .. resultado)

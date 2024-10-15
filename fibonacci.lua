function pertenceAFibonacci(numero)
    local a, b = 0, 1
    while b <= numero do
        if b == numero then
            return true
        end
        a, b = b, a + b
    end
    return false
end

local numero = 21

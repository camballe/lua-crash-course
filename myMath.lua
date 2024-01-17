-- CUSTOM MODULE

_G.my_math = {}

function my_math.add(x, y) -- we cannot use local here
    return x + y
end

function my_math.power(num1, num2)
    return num1 ^ num2
end

return my_math -- this can be local or global, but we need it global to use it in other files

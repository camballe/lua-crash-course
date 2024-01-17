local function displayAge(age)
    age = age or 5
    print("You are " .. age .. " years old")
    print("You will be " .. age + 2 .. " years old in 2 years")
    print("You were " .. age - 1 .. " years old last year")
    print()
end

-- Same as variables, functions can be local or global
displayAge(19)
displayAge(20)
displayAge(49)
displayAge()

local function sum(num1, num2)
    return num1 + num2
end

local result = sum(2, 3)
print(result)


local add10 = function(number)
    local outcome = 10 + number
    return number, outcome
end

-- local stored, output = add10(20)

-- print(stored .. " had 10 added to it: " .. output)


local _, output = add10(20)

print("Had 10 added to it: " .. output)



-- RECURSION

local function counter(number, end_num)
    local count = number + 1
    if (count < end_num) then
        print(count)
        return counter(count, end_num)
    end
    return count
end

print(counter(10, 15))

-- CLOSURES
local function counter2()
    local count = 0
    return function()
        count = count + 1
        return count
    end
end

local x = counter2()

print(x())
print(x())

--[[

In Lua, when you create a closure, it "closes over" the variables from the outer function (in this case, the counter2 function). This means that the inner function retains access to the local variables of the outer function, even after the outer function has completed execution. In your code, the inner function retains access to the count variable from the counter2 function, and the value of count is not reset between calls to the inner function.

1. When you call counter2(), it returns a function that has access to the local variable count inside the counter2 function. This creates a closure.
2. When you call x(), the inner function is executed. It increments the shared count variable (from the closure), which was initialized to 0 when the closure was created, and returns the updated value (1 in this case).
3. When you call x() again, the inner function is executed once more, and it increments the shared count variable (which is now 1) and returns the updated value (2).

Since the closure retains access to the same count variable between calls, its value is not reset, and it continues to accumulate across multiple calls to the inner function.
]]



local function sum2(...)
    local sums = 0

    -- for i = 1, #{ ... } do

    -- end

    for key, value in pairs({ ... }) do
        sums = sums + value
    end
    return sums
end

print(sum2(10, 5, 30))

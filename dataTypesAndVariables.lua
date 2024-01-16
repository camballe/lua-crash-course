--[[
    nil
    number 1, 1.24, 0.1, 44
    string 'hello' "hello world"
    boolean true false
    table
]]

local name = "Jack"
local surname = "Smitter"
print("My name is " ..
    name ..
    ". I am 12 years old. I have decided that my name should not be " .. name .. " because the name " .. name .. " sucks")

print(name .. " " .. surname)

local description = [[Colo
    Hello World
please
]]

print(description)

local old = true

C = 20       -- global variable
local c = 10 -- local variable
print(C, c)

_G.Hello = "hello" -- more recommended way of defining global variables

x = "hi"
print(type(x))

-- You may define variables without the 'local' keyword. You'll get a squiggly line under the name because Lua will think you intended on using uppercase, to indicate a global variable

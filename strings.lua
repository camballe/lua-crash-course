local str = "Hello "
print(str .. "world")

local str2 = "Hello World"
print(#str2)

local x = 22
local y = tostring(x)

print(type(x), type(y))

print([[Hello
World
]])

print("Hello\nWorld\t!!!!!!\vI am \"Steve\\Netsu/Enoch\"")

print(string.lower(str))
print(string.upper(str))
print(string.len(str))
print(string.sub(str2, 1, 5))

print(string.char(97))
print(string.byte("a"))
print(string.byte(str2, 1, 99))
print(string.rep("Hello!", 10, ", "))
print(string.format("pi: %.2f\nMy age: %i", math.pi, 19))
local begin, ending = string.find(str2, "orl")
print("Begin: " .. begin .. "\nEnd: " .. ending)
print(string.match(str2, "orl"))
print(string.match(str2, "osrl"))
print(string.gsub(str, "o", "!"))
print(string.gsub(str2, "l", "HAPPY FACE"))

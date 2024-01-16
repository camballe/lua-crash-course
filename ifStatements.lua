if false then
    print("Statement was true")
end

--[[
    > greater than
    < less than
    >= greater than or equal to
    <= less than or equal to
    ~= not equal to
    ==
]]

local age = 19
local name = "Tom"

if age > 17 and age < 60 then
    print("You may enter")
end

if age > 17 or age < 10 then
    print("You may enter")
end

if name == "Tom" then
    print("You may enter")
end

if not (age < 18) then
    print("You may enter")
end



if age > 20 then
    print("You are old")
elseif age > 10 then
    print("You are neither old nor young")
elseif age > 5 then
    print("Boo hoo")
else
    print("You are young")
end


local old = age > 30 and true or false


print(old)

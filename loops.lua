for i = 1, 10 do
    print(i)
end

local start_val, end_val, step_val = 10, 1, -1

for i = start_val, end_val, step_val  do
    print(i)
end

local arr = {2, 3, 4, 45, 6576, 34, 21, 2, 30}

for i = 1, #arr do
    print(arr[i])
end

local peeps = 10

while peeps > 0 do
    peeps = peeps - 1
    print("People left at party: "..peeps)
end

local run = true
local runtime = 0

while run do
    print("running")

    if runtime == 10 then
        run = false
    end

    runtime = runtime + 1
end

local x = 11

-- while x < 10 do
--     print("Hey there!")
--     x = x + 1
-- end



repeat
    print("Hey there!")
    x = x + 1
until x > 10

-- repeat-until runs at least once, compared to a while loop which won't run if the condition is not met
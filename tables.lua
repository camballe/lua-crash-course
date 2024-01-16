local x, y, z = 10, 15, 20
local a, b, c = 10, true, "hello world"

local arr = {10, 15, 23, 23, 50, 0, 1, 7, 9}
local arr2 = {10, true, "hello world", 2.4}

table.sort(arr)

table.insert(arr, 2, "lol")
table.remove(arr, 4)

-- print(arr[2])

for i = 1, #arr do
    print(arr[i])
end

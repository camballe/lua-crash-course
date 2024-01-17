local x, y, z = 10, 15, 20
local a, b, c = 10, true, "hello world"

local arr = { 10, 15, 23, 23, 50, 0, 1, 7, 9 }
local arr2 = { "Hello", "world", "I", "am Enoch" }

table.sort(arr)

table.insert(arr, 2, "lol")
table.remove(arr, 4)

-- print(arr[2])

for i = 1, #arr do
    print(arr[i])
end

print(table.concat(arr2, " "))

-- Multidimentional tables

local arr3 = {
    { 1, 2, 3 },
    { 6, 8, 0 },
    { 9, 9, 989 }
}

print(arr3[3][1])

for i = 1, #arr3 do
    io.write("{")
    for j = 1, #arr3[i] do
        io.write(arr3[i][j] .. ", ")
    end
    io.write("}\n")
end

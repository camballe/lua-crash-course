-- -- io.output("myFile.txt") -- writing to file

-- -- io.write("Hello World!")

-- io.input("myFile.txt") -- reading from file

-- -- local file = io.read("*number")

-- -- print(io.read("*line"))
-- -- print(io.read("*line"))

-- local file = io.read("*all")

-- io.close()
-- print(file)


-- local anotherFile = io.open("anotherFile.txt", "a")
local anotherFile = io.open("anotherFile.txt", "r")
local reads = anotherFile:read("*line")

-- anotherFile:write("\nMy name is Kambale")

anotherFile:close()
print(reads)

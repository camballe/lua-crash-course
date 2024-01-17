local past = os.time({
    year = 2000,
    month = 10,
    day = 1,
    hour = 13,
    min = 20,
    sec = 10
})

-- print(os.time() - past)
print(os.difftime(os.time(), past))

print(os.date())

print(os.getenv("HOME"))
print(os.getenv("USER"))

-- os.rename("file.txt", "renamed_file.txt")

-- os.remove("file.js")

os.execute("whoami") --execute system terminal commands

local start = os.clock()

for i = 1, 1000000 do
    local x = 10
end

print(os.clock() - start)

for i = 1, 10 do
    print(i)
    if i == 5 then
        os.exit()
    end
end

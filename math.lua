local str = "22"
print(type(tonumber(str)))

print(5 + 5)
print(20 - 5)
print(2 ^ 5)
print(5 * 8)
print(5 * 9 * (2 + 5))
print(10 / 2)
print(100 / 3.14)
print(10 % 3)
print(5 + 10 * 2)
print(((5 + 2) * 10) / 2)

x = 5
y = 10
z = x + y
print(z)


math.randomseed(os.time())
print(math.random(10, 50))

--[[the above snippet prints a random number every second]]
print(os.time())

print(math.min(10, 1, 50, 12, 19, 22, 48))

print(math.ceil(3.97312))
print(math.floor(3.97312))
print(math.sin(20))
print(math.cos(20))
print(math.tan(20))

-- Lua is not an OOPL, but we can simulate objects

local t = {
    name = "Enoch",
    age = 19,
    friends = { "Matt" }
}

print(t.name)

local function Pet(name)
    return {
        name = name or "Luis",
        status = "hungry",

        feed = function(self)
            print(self.name .. " is fed")
            self.status = "full"
        end
    }
end

local cat = Pet("Kitty")
local dog = Pet()

print(cat.name)
print(dog.name)

print(cat.status)
cat:feed()
print(cat.status)

print(dog.status)


local function Dog(name, breed)
    local dog2 = Pet(name)
    dog2.breed = breed
    dog2.loyalty = 0

    dog2.isLoyal = function(self)
        return self.loyalty >= 10
    end

    dog2.feed = function(self)
        print(self.name .. " is fed")
        self.status = "full"
        self.loyalty = self.loyalty + 5
    end

    dog2.bark = function(self)
        print("Woof Woof")
    end

    return dog2
end

local lad = Dog("Doggy", "Poodle")
local lassy = Dog("Lassy", "Poodle")
print(lassy.status)

lassy:feed()
lassy:feed()

if lassy:isLoyal() then
    print("Will protect against intruder")
else
    print("Will NOT protect against intruder")
end

print(lassy.breed)
lassy:bark()

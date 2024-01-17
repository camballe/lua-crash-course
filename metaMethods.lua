local function addTableValues(x, y)
    return x.num + y.num
end

local function addCoordinates(v1, v2)
    return { x = v1.x + v2.x, y = v1.y + v2.y }
end

local metatable = {
    -- __add = addTableValues,
    __add = addCoordinates,
    __sub = function(x, y)
        return x.num - y.num
    end
}

local tbl1 = { num = 50 }
local tbl2 = { num = 10 }
local tbl3 = { x = 10, y = 20 }
local tbl4 = { x = 5, y = 9 }



-- setmetatable(tbl1, metatable)
setmetatable(tbl3, metatable)



-- local ans = tbl1 - tbl2
local vec = tbl3 + tbl4
print("x: " .. vec.x .. "\ny: " .. vec.y)

--[[
    __add +
    __sub -
    __mul *
    __div /
    __mod %
    __pow ^
    __concat ..
    __len #
    __eq ==
    _lt <
    _le =<
    _gt >
    _ge >=




    In Lua, when you use the setmetatable function, you are setting the metatable for a specific table. However, the metamethods defined in the metatable apply to operations involving the table regardless of whether it is on the left or right side of the operation.

    In the above example, we set the metatable for tbl1:
        setmetatable(tbl1, metatable)

    This means that when you perform the subtraction operation (tbl1 - tbl2), Lua looks for the __sub metamethod in the metatable associated with tbl1. If it finds the metamethod, it uses the defined function for the subtraction.

    So, in this case, the metatable with the __sub metamethod is associated with tbl1, and that metamethod is used for the subtraction operation involving tbl1. The tbl2 table, in this context, is treated similarly to a number, and the subtraction is performed as specified in the metamethod.

    In summary, even though we only set the metatable for tbl1, the metamethods defined in that metatable are used for operations involving tbl1 regardless of its position in the operation.
]]

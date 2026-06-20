getgenv().SCRIPT_KEY = ""
local src = game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/4a5a3e4f556e22d225bc9dbedc2b5542d7c9bcb8303557675641158b7a2ce2df/download")

print("Downloaded", #src)

local func, err = loadstring(src)

print("Compiled", func ~= nil, err)

task.wait(5)

print("Executing...")
func()

print("Finished")

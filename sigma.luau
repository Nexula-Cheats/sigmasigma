task.wait(4)
print("destroying the world now")
task.wait(1)

while true do
    task.wait()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        Instance.new("RemoteEvent", v):FireAllClients()
        Instance.new("Explosion", v)
        Instance.new("Fire", v).Size = 25
        if v:IsA("RemoteEvent") then
            v:FireAllClients()
        end
        if v:IsA("BasePart") then
            v.Rotation = Vector3.new(math.random(1,360),math.random(1,360),math.random(1,360))
            v.AssemblyLinearVelocity = Vector3.new(math.random(-math.huge, math.huge), math.random(-math.huge, math.huge), math.random(-math.huge, math.huge))
        end
    end
end

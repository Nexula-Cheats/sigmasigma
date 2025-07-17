while true do
    task.wait()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        script:Clone().Parent = v
        Instance.new("RemoteEvent", v):FireAllClients()
        if v:IsA("RemoteEvent") then
            v:FireAllClients()
        end
    end
end

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
	end
end

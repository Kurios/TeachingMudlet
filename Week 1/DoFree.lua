
ksys.head = nil

function ksys.add(action)
	ksys.head = ksys._add(action,ksys.head)
	if(gmcp.Char.Vitals.equilibrium == "1" and gmcp.Char.Vitals.balance == "1" ) then
display("\n acting")
		ksys.act()
	end
end

function ksys._add(action,node)
	if(node == nil) then
		node = { pointer = nil, action = action }
	else
		node.pointer = ksys._add(action,node.pointer)
	end
	return node
end

function ksys.act()
	if not (ksys.head == nil) then
		send(ksys.head.action)
		ksys.head = ksys.head.pointer
	end
end

function ksys.has()
	echo(" " .. (not (ksys.head == nil)))
	return not (ksys.head == nil)
end

function ksys.abort()
	ksys.head = nil
end





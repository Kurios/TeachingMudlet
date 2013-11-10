function ksys.gmcpVitals()
	echo("GMCP Event")
	if(gmcp.Char.Vitals.equilibrium == "1"  and gmcp.Char.Vitals.balance == "1" ) then --and gmcp.Char.Vitals.balance == 1 
		echo("testing")
		ksys.act()
	end
end
local Service = {
}
--//Services//--

--//End of "Services"//--



--//Misc.//--
local self
--//End of "Misc."//--



--//Arrays//--
local Threads = {}
--[[Example,
	
]]--

Service.Settings = {
		ReportFailure = true;
};

--//End of "Arrays"//--



--//Main Functions//--
local function Reconcile(
	TABLE_0, TABLE_1
)
	local TABLE_2 = {}
	
	task.desynchronize()
	for SETTING, VALUE in pairs(TABLE_0) do
		TABLE_2[SETTING] = (TABLE_1[SETTING]) or VALUE
		
	end
	task.synchronize()
	
	return
		TABLE_2
	
end
--//End of "Main Functions"//--



--//Main//--
function Service:Initialize(
	...
)
	Service.Settings = Reconcile(Service.Settings, ...) -- To Make Sure we Have Everything.
	print("Initialized!")
	
end
--//End of "Main"//--



--//Connections//--
self = Threads
return
	Service
--//End of "Connections"//--

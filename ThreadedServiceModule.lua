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
local TEMPLATE = {
	Connections = {};
	Waits = {};
	
}
--//End of "Arrays"//--



--//Main Functions//--
local function TaskHandler(
		EVENT, EVENT_HANDLER
	)
	local runningCoro = coroutine.running()
	
	local RETURN, CONNECTION
	CONNECTION = EVENT:CONNECT(function(...)
			coroutine.resume(runningCoro)
			RETURN = EVENT_HANDLER(...)
			
	end)
	coroutine.yield()
	
	return 
		RETURN
	
end
--//End of "Main Functions"//--



--//Main//--
function Service:Wait(
		...
	)
	local THREAD = coroutine.create(TaskHandler)
	--local RETURNS = coroutine.resume(THREAD, ...)
	
	print("Ayo")
	return
		coroutine.resume(THREAD, ...)
	
end
--//End of "Main"//--



--//Connections//--
self = Threads
return
	Service
--//End of "Connections"//--

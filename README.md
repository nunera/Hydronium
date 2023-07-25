## Script
```lua
local owner = "nunera"
local branch = "revision"

local function webImport(file)
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydronium/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end

webImport("init")
webImport("ui/main")
```

# Hydronium
<i>General purpose pen-testing tool for games on the Roblox engine</i>


<p align="center">
    <img src="https://cdn.discordapp.com/attachments/633079498572562452/1133314416604090470/68747470733a2f2f63646e2e646973636f72646170702e636f.png"/>
    </br>
    <img src="https://cdn.discordapp.com/attachments/633079498572562452/1133315156269613136/image.png" width="677px"/>
</p>

## Features
* Upvalue Scanner
    * View/Modify Upvalues
    * View first-level values in table upvalues
    * View information of closure
* Constant Scanner
    * View/Modify Constants
    * View information of closure
* Script Scanner
    * View general information of scripts (source, protos, constants, etc.)
    * Retrieve all protos found in GC
* Module Scanner
    * View general information of modules (return value, source, protos, constants, etc.)
    * Retrieve all protos found in GC
* RemoteSpy
    * Log calls of remote objects (RemoteEvent, RemoteFunction, BindableEvent, BindableFunction)
    * Ignore/Block calls based on parameters passed
    * Traceback calling function/closure
* ClosureSpy
    * Log calls of closures
    * View general information of closures (location, protos, constants, etc.)

More to come, soon.

## Images/Videos

<i>Video prior to Hydronium</i>
<p align="center">
    <img src="https://i.gyazo.com/63afdd764cdca533af5ebca843217a7e.gif" />
</p>


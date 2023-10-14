surface.CreateFont( "home", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 26,
	weight = 900,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

local god = false 

net.Receive("Status", function(len)
    local valor = net.ReadBool()
    if valor == true then
		god = true
	else
		god = false
	end
end)

hook.Add("HUDPaint", "identifier", function()  

    draw.RoundedBox(20, ScrH()/2 - 430, ScrW()/2 - 70, 150, 50, Color(0, 0, 0, 210))
    if god == false then
        draw.SimpleText('Modo: OFF', "home", ScrH()/2 - 410, ScrW()/2 - 60, Color(255,255,255,255))
    else
        draw.SimpleText('Modo: On', "home", ScrH()/2 - 410, ScrW()/2 - 60, Color(255,255,255,255))
    end
end)


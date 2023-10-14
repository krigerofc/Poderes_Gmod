SWEP.PrintName = "Homelander_vision"
SWEP.Author = "kriger"
SWEP.Purpose = ""
SWEP.Slot = 0
SWEP.SlotPos = 4

SWEP.Spawnable = true

SWEP.ViewModel = Model( "" )
SWEP.WorldModel = ""
SWEP.ViewModelFOV = 54
SWEP.UseHands = false

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "stuntick"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"

SWEP.DrawAmmo = true

SWEP.HitDistance = 50

local AtaqueSound = Sound( "vision.mp3" )


function SWEP:PrimaryAttack()
	local olho = self.Owner:GetEyeTrace()
	
	if olho.Entity:IsNPC() then
		olho.Entity:Ignite(20, 2)
	end
end
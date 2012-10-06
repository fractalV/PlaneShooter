require "com.jessewarden.planeshooter.vo.weapons.WeaponVO"
Gun50CaliberVO = {}

function Gun50CaliberVO:new()

	local gun     = WeaponVO:new()
	gun.classType = "Gun50CaliberVO"
	gun.fireSpeed = 300
	gun.damage    = 2
	gun.type      = WeaponVO.TYPE_GUN
	gun.weight    = 2
	return gun
end


return Gun50CaliberVO
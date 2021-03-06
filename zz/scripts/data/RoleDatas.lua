local _RoleDatas = {}

_RoleDatas[1] = {
	resId 		= "9",
	pos 		= {x=0, y=0},
	health 		= 10,
	maxHealth 	= 100,
}

_RoleDatas[2] = {
	resId = "8",
	pos = {x=3, y=0}, 
	health 		= 50,
	maxHealth 	= 100,  
}

RoleDatas = {}

RoleDatas.animations = {"movedown", "moveup", "moveleft", "moveright", "injure", "attackdown", "attackup", "attackleft",  "attackright"}
RoleDatas.animationNums = {2, 2, 2, 2, 2, 4, 4, 4, 4}

RoleDatas.MOVE_DOWN 		= 1
RoleDatas.MOVE_UP 			= 2
RoleDatas.MOVE_LEFT 		= 3
RoleDatas.MOVE_RIGHT 		= 4
RoleDatas.INJURE 			= 5
RoleDatas.ATTACK_DOWN 		= 6
RoleDatas.ATTACK_UP 		= 7
RoleDatas.ATTACK_LEFT 		= 8
RoleDatas.ATTACK_RIGHT 		= 9

RoleDatas.DIRECTION_DOWN 	= 1
RoleDatas.DIRECTION_UP		= 2
RoleDatas.DIRECTION_LEFT	= 3
RoleDatas.DIRECTION_RIGHT	= 4



function RoleDatas.numRoles()
    return #_RoleDatas
end

function RoleDatas.get(roleIndex)
    assert(roleIndex >= 1 and roleIndex <= #_RoleDatas, string.format("RoleDatas.get() - invalid roleIndex %s", tostring(roleIndex)))
    return clone(_RoleDatas[roleIndex])
end

--return RoleDatas
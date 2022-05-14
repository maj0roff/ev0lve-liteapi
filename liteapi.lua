-- [                                        ]
-- [         Liteapi v1 | by maj0r          ]
-- [                                        ]

event_log.add(event_log.light_green, "[ LiteAPI ] ")
event_log.add(event_log.white, "Started Loading")
event_log.output()

-------------------------------------------------------------------

event_log.add(event_log.light_green, "[ LiteAPI ] ")
event_log.add(event_log.white, "State 1 > Setting up defines")
event_log.output()

WEAPON_NONE = 0;
WEAPON_DEAGLE = 1;
WEAPON_ELITE = 2;
WEAPON_FIVESEVEN = 3;
WEAPON_GLOCK = 4;
WEAPON_AK47 = 7;
WEAPON_AUG = 8;
WEAPON_AWP = 9;
WEAPON_FAMAS = 10;
WEAPON_G3SG1 = 11;
WEAPON_GALILAR = 13;
WEAPON_M249 = 14;
WEAPON_M4A1 = 16;
WEAPON_MAC10 = 17;
WEAPON_P90 = 19;
WEAPON_MP5SD = 23;
WEAPON_UMP45 = 24;
WEAPON_XM1014 = 25;
WEAPON_BIZON = 26;
WEAPON_MAG7 = 27;
WEAPON_NEGEV = 28;
WEAPON_SAWEDOFF = 29;
WEAPON_TEC9 = 30;
WEAPON_TASER = 31;
WEAPON_HKP2000 = 32;
WEAPON_MP7 = 33;
WEAPON_MP9 = 34;
WEAPON_NOVA = 35;
WEAPON_P250 = 36;
WEAPON_SHIELD = 37;
WEAPON_SCAR20 = 38;
WEAPON_SG556 = 39;
WEAPON_SSG08 = 40;
WEAPON_KNIFEGG = 41;
WEAPON_KNIFE = 42;
WEAPON_FLASHBANG = 43;
WEAPON_HEGRENADE = 44;
WEAPON_SMOKEGRENADE = 45;
WEAPON_MOLOTOV = 46;
WEAPON_DECOY = 47;
WEAPON_INCGRENADE = 48;
WEAPON_C4 = 49;
WEAPON_HEALTHSHOT = 57;
WEAPON_KNIFE_T = 59;
WEAPON_M4A1_SILENCER = 60;
WEAPON_USP_SILENCER = 61;
WEAPON_CZ75A = 63;
WEAPON_REVOLVER = 262208; -- 64
WEAPON_TAGRENADE = 68;
WEAPON_FISTS = 69;
WEAPON_BREACHCHARGE = 70;
WEAPON_TABLET = 72;
WEAPON_MELEE = 74;
WEAPON_AXE = 75;
WEAPON_HAMMER = 76;
WEAPON_SPANNER = 78;
WEAPON_KNIFE_GHOST = 80;
WEAPON_FIREBOMB = 81;
WEAPON_DIVERSION = 82;
WEAPON_FRAG_GRENADE = 83;
WEAPON_SNOWBALL = 84;
WEAPON_BUMPMINE = 85;
WEAPON_BAYONET = 500;
WEAPON_KNIFE_TACTICAL = 509;
WEAPON_KNIFE_SURVIVAL_BOWIE = 514;
WEAPON_KNIFE_PUSH = 516;
WEAPON_KNIFE_GYPSY_JACKKNIFE = 520;
WEAPON_KNIFE_WIDOWMAKER = 523;
WEAPON_KNIFE_BAYONET = 590324;
WEAPON_KNIFE_FLIP = 590329;
WEAPON_KNIFE_GUT = 590330;
WEAPON_KNIFE_KARAMBIT = 590331;
WEAPON_KNIFE_M9_BAYONET = 590332;
WEAPON_KNIFE_HUNTSMAN = 590333;
WEAPON_KNIFE_FALCHION = 590336;
WEAPON_KNIFE_BOWIE = 590338;
WEAPON_KNIFE_BUTTERFLY = 590339;
WEAPON_KNIFE_SHADOW_DAGGERS = 590340;
WEAPON_KNIFE_URSUS = 590343;
WEAPON_KNIFE_NAVAJA = 590344;
WEAPON_KNIFE_STILETTO = 590346;
WEAPON_KNIFE_TALON = 590347;
WEAPON_KNIFE_CSS = 590327;
WEAPON_KNIFE_CORD = 590341;
WEAPON_KNIFE_CANIS = 590342;
WEAPON_KNIFE_OUTDOOR = 590345;
WEAPON_KNIFE_SKELETON = 590349;

HITBOX_HEAD = 0;
HITBOX_NECK = 1;
HITBOX_PELVIS = 2;
HITBOX_STOMACH = 3;
HITBOX_THORAX = 4;
HITBOX_CHEST = 5;
HITBOX_UPPER_CHEST = 6;
HITBOX_RIGHT_THIGH = 7;
HITBOX_LEFT_THIGH = 8;
HITBOX_RIGHT_CALF = 9;
HITBOX_LEFT_CALF = 10;
HITBOX_RIGHT_FOOT = 11;
HITBOX_LEFT_FOOT = 12;
HITBOX_RIGHT_HAND = 13;
HITBOX_LEFT_HAND = 14;
HITBOX_RIGHT_UPPER_ARM = 15;
HITBOX_RIGHT_FOREARM = 16;
HITBOX_LEFT_UPPER_ARM = 17;
HITBOX_LEFT_FOREARM = 18;
HITBOX_MAX = 19;

MOVETYPE_NONE = 0; -- Freezes the entity, outside sources can't move it. 
MOVETYPE_ISOMETRIC = 1; -- For players in TF2 commander view etc. Do not use this for normal players! 
MOVETYPE_WALK = 2; -- Default player (client) move type. 
MOVETYPE_STEP = 3; -- NPC movement 
MOVETYPE_FLY = 4; -- Fly with no gravity. 
MOVETYPE_FLYGRAVITY = 5; -- Fly with gravity. 
MOVETYPE_VPHYSICS = 6; -- Physics movetype (prop models etc.) 
MOVETYPE_PUSH = 7; -- No clip to world, but pushes and crushes things.
MOVETYPE_NOCLIP = 8; -- Noclip, behaves exactly the same as console command.
MOVETYPE_LADDER = 9; -- For players, when moving on a ladder. 
MOVETYPE_OBSERVER = 10; -- Spectator movetype. DO NOT use this to make player spectate. 
MOVETYPE_CUSTOM = 11; -- Custom movetype, can be applied to the player to prevent the default movement code from running, while still calling the related hooks
MOVETYPE_LAST = MOVETYPE_CUSTOM;
MOVETYPE_MAX_BITS = 4;

NULL = 0;
M_PI = 3.14159265358979323846;
M_PI_2 = 6.2831853071795862;
M_180_PI = 0.0174533;
M_PI_180 = 57.2958;
INT_MAX = 2147483647;

event_log.add(event_log.light_green, "[ LiteAPI ] ")
event_log.add(event_log.white, "State 2 > Setting up custom render")
event_log.output()

render.rect_gradient_rounded = function (x1, y1, x2, y2, rounding, color1, color2, color3, color4)
    x2, y2 = x2 + 1, y2 + 1
    render.circle           (x1 + rounding , y1 + rounding, rounding, color1, 1, 16, 0.25, 180)
    render.line_multicolor  (x1 + rounding, y1, x2 - rounding - 1, y1, color1, color2)
    
    render.circle           (x2 - rounding - 1, y1 + rounding, rounding, color2, 1, 16, 0.25, 270)
    render.line_multicolor  (x2, y1 + rounding, x2, y2 - rounding - 1, color2, color4)
    
    render.circle           (x1 + rounding, y2 - rounding - 1, rounding, color3, 1, 16, 0.25, 90)
    render.line_multicolor  (x1 + rounding, y2, x2 - rounding - 1, y2, color3, color4)
    
    render.circle           (x2 - rounding - 1, y2 - rounding - 1, rounding, color4, 1, 16, 0.25, 0)
    render.line_multicolor  (x1, y1 + rounding, x1, y2 - rounding, color1, color3)
end

event_log.add(event_log.light_green, "[ LiteAPI ] ")
event_log.add(event_log.white, "State 3 > Setting up simple functions")
event_log.output()

ffi.cdef [[
    typedef struct
    {
        float x;
        float y;
        float z;
    } vec3_t;

    typedef void*(__thiscall* get_client_entity_f)(void*, int);

    typedef int(__thiscall* get_muzzle_attachment_index_f)(void*, void*);
    typedef int(__thiscall* get_muzzle_attachment_index_3f)(void*);
    typedef bool(__thiscall* get_attachment_f)(void*, int, vec3_t*);
]]
local thirdperson = gui.get_checkbox("visuals.local.thirdperson")
local ffi_things = {}

ffi_things.__thiscall = function(func, this)
    return function(...) return func(this, ...) end
end

ffi_things.interface_type = ffi.typeof("uintptr_t**")
ffi_things.i_client_entity_list = ffi.cast(ffi.typeof(ffi_things.interface_type),utils.find_interface("client.dll","VClientEntityList003"))
if not ffi_things.i_client_entity_list then error("oops") end
ffi_things.get_client_entity = ffi_things.__thiscall(ffi.cast("get_client_entity_f",ffi_things.i_client_entity_list[0][3]),ffi_things.i_client_entity_list)
if not ffi_things.get_client_entity then error("oops2") end

function get_muzzle_position()

    if not engine.get_local_player() then return end

    local me = entities.get_entity(engine.get_local_player())
    if not me then return end

    local my_weapon = me:get_prop("m_hActiveWeapon")
    if not my_weapon then return end
    my_weapon = entities.get_entity_from_handle(my_weapon)
    if not my_weapon then return end

    local my_entity = ffi_things.get_client_entity(me:get_index())
    if not my_entity then return end

    local my_weapon_entity = ffi_things.get_client_entity(my_weapon:get_index())
    if not my_weapon_entity then return end

    local viewmodel = entities.get_entity_from_handle(me:get_prop("m_hViewModel[0]"))
    if not viewmodel then return end

    local viewmodel_entity = ffi_things.get_client_entity(viewmodel:get_index())
    if not viewmodel_entity then return end

    local weapon_table = ffi.cast(ffi_things.interface_type, my_weapon_entity)[0]
    if not weapon_table then return end

    local pos = ffi.new("vec3_t[1]")
    local found

    if thirdperson:get_value() then
        
        local weaponworldmodel = entities.get_entity_from_handle(my_weapon:get_prop("m_hWeaponWorldModel"))
        if not weaponworldmodel then return end

        local world_entity = ffi_things.get_client_entity(weaponworldmodel:get_index())
        if not world_entity then return end

        local world_table = ffi.cast(ffi_things.interface_type, world_entity)[0]
        if not world_table then return end
        
        local get_world_attachment = ffi.cast("get_attachment_f", world_table[84])
        if not get_world_attachment then return end

        local get_muzzle_attachment_index_3 = ffi.cast("get_muzzle_attachment_index_3f", weapon_table[469])
        if not get_muzzle_attachment_index_3 then return end

        local muzzle_attachment_index_3 = get_muzzle_attachment_index_3(my_weapon_entity)
        if not muzzle_attachment_index_3 then return end

        found = get_world_attachment(world_entity, muzzle_attachment_index_3, pos)
    else
        local viewmodel_table = ffi.cast(ffi_things.interface_type, viewmodel_entity)[0]
        if not viewmodel_table then return end

        local get_attachment = ffi.cast("get_attachment_f", viewmodel_table[84])
        if not get_attachment then return end

        local get_muzzle_attachment_index = ffi.cast("get_muzzle_attachment_index_f", weapon_table[468])
        if not get_muzzle_attachment_index then return end

        local muzzle_attachment_index = get_muzzle_attachment_index(my_weapon_entity, viewmodel_entity)
        if not muzzle_attachment_index then return end

        found = get_attachment(viewmodel_entity, muzzle_attachment_index, pos)
    end

    return {
        found = found,
        position = {x = pos[0].x, y = pos[0].y, z = pos[0].z}
    }
end

local frametime = 0
local frameskips = 0
local last_fps = 0

function get_fps() 
    
    if frameskips <= 12 then
        frameskips = frameskips + 1
        return last_fps
    end

    frameskips = 0

    last_fps = math.floor(((1 / global_vars.frametime) + last_fps) / 2)

    if tostring(last_fps) == "inf" then
        last_fps = 0
    end

    return last_fps

end

function eventmessage(eventlog_color, message)
    event_log.add(eventlog_color, message)
    event_log.output()
end

event_log.add(event_log.light_green, "[ LiteAPI ] ")
event_log.add(event_log.white, "State 4 > Setting up math functions")
event_log.output()

function GetLerpTime()
    local cl_updaterate = cvar.cl_updaterate:get_int();
    local sv_minupdaterate = cvar.sv_minupdaterate:get_int();
    local sv_maxupdaterate = cvar.sv_maxupdaterate:get_int();
    
    if (sv_minupdaterate and sv_maxupdaterate) then
        cl_updaterate = sv_maxupdaterate;
    end    
    
    local cl_interp_ratio = cvar.cl_interp_ratio:get_float();
    
    if (cl_interp_ratio == 0) then
        cl_interp_ratio = 1;
    end
    
    local cl_interp = cvar.cl_interp:get_float();
    local sv_client_min_interp_ratio = cvar.sv_client_min_interp_ratio:get_float();
    local sv_client_max_interp_ratio = cvar.sv_client_max_interp_ratio:get_float();
    
    if (sv_client_min_interp_ratio and sv_client_max_interp_ratio and sv_client_min_interp_ratio ~= 1) then
        cl_interp_ratio = clamp(cl_interp_ratio, sv_client_min_interp_ratio, sv_client_max_interp_ratio);
    end
    
    return math.max(cl_interp, (cl_interp_ratio / cl_updaterate));
end

function calcPercent(num, percent)
    return num / 100 * percent
end

function Clamp(x, min, max)
	if (x < min) then
		x = min;
	end
	
	if (x > max) then
		x = max;
	end
	
	return x;
end

function IsNaN(x)
    return x ~= x;
end
  
function NormalizePitch(pitch)
      if (pitch > 89) then
          return 89;
      elseif (pitch < -89) then
          return -89;
      end
      
      return pitch;
end
  
function NormalizeYaw(yaw)
      if (yaw > 180) then
          return yaw - (round(yaw / 360) * 360.0);
      elseif (yaw < -180) then
          return yaw + (round(yaw / 360) * -360.0);
      end
      
      return yaw;
end
  
function NormalizeRoll(roll)
      return 0;
end

function RAD2DEG(x)
	return (x * M_PI_180);
end

function DEG2RAD(x)  
	return (x * M_180_PI);
end

function GetTickrate()
	return (1.0 / global_vars.interval_per_tick);
end

function TIME_TO_TICKS(time)		
	return (0.5 + time / global_vars.interval_per_tick);
end

function TICKS_TO_TIME(ticks)
	return (global_vars.interval_per_tick * ticks);
end

event_log.add(event_log.light_green, "[ LiteAPI ] ")
event_log.add(event_log.white, "Liteapi fully loaded!")
event_log.output()

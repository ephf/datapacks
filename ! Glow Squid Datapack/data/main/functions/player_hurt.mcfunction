execute at @e[type=glow_squid,tag=tped,limit=1] run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 10 1 0.7
execute at @e[type=glow_squid,tag=tped,limit=1] run particle minecraft:glow_squid_ink ~ ~ ~ 1 1 1 0.1 100 normal
advancement revoke @s only main:hurt
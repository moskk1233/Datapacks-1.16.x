#effect
execute as @a at @s run execute if predicate twerk:sneaking unless score @s twrk.check matches 1 run scoreboard players set @s twrk.time.out 3
execute as @a at @s run execute if predicate twerk:sneaking unless score @s twrk.check matches 1 run scoreboard players add @s twrk.proc.effect 1
execute as @a at @s run execute if predicate twerk:sneaking run scoreboard players set @s twrk.check 1
execute as @a at @s run execute unless predicate twerk:sneaking run scoreboard players reset @s twrk.check
execute as @a at @s run execute if score @s twrk.time.out matches 1 run scoreboard players set @s twrk.proc.effect -1

execute if predicate twerk:sneaking unless score @s twrk.check matches 1 run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 16
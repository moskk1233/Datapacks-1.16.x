execute if score @s twrk.time.out matches 1.. run scoreboard players remove @s twrk.time.out 1
execute unless score @s twrk.time.out matches 1.. run scoreboard players reset @s twrk.time.out

#menu
scoreboard players enable @a twrk.menu
execute as @a[scores={twrk.menu=1}] run tellraw @p ["",{"text":"[Reload]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s twrk.menu 2"},"hoverEvent":{"action":"show_text","contents":["Click here to reload twerk"]}}," ",{"text":"[Uninstall]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s twrk.menu 3"},"hoverEvent":{"action":"show_text","contents":["Click here to uninstall twerk"]}}]
execute as @a[scores={twrk.menu=2}] run function twerk:setup
execute as @a[scores={twrk.menu=3}] run function twerk:uninstall
execute as @a[scores={twrk.menu=1..}] run scoreboard players reset @s twrk.menu
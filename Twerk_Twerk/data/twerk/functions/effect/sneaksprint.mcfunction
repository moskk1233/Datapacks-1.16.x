function twerk:effect/sneakprocess

title @a[scores={twrk.proc.effect=-1}] actionbar [{"text":"Get Buff ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙","color":"red","bold":false}],{"text":"]","color":"aqua"}]

title @a[scores={twrk.proc.effect=1}] actionbar [{"text":"Get Buff ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙","color":"green","bold":false},{"text":"❙❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
title @a[scores={twrk.proc.effect=2}] actionbar [{"text":"Get Buff ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙","color":"green","bold":false},{"text":"❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
title @a[scores={twrk.proc.effect=3}] actionbar [{"text":"Get Buff ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙","color":"green","bold":false},{"text":"❙","color":"gray"}],{"text":"]","color":"aqua"}]
title @a[scores={twrk.proc.effect=4}] actionbar [{"text":"Get Buff ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙","color":"green","bold":false},{"text":"","color":"gray"}],{"text":"]","color":"aqua"}]
execute as @a at @s run execute if score @s twrk.proc.effect matches -1 run scoreboard players reset @s twrk.proc.effect
execute as @a at @s if score @s twrk.proc.effect matches 5 run effect give @s speed 20 0 true
execute as @a at @s if score @s twrk.proc.effect matches 5 run effect give @s jump_boost 20 0 true

schedule function twerk:effect/sneaksprint 1t
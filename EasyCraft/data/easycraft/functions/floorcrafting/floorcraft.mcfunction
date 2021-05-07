#Floor Saddle
execute as @e[type=item, nbt={Item:{id:"minecraft:leather", Count:5b}}] at @s run execute as @e[type=item, nbt={Item:{id:"minecraft:lead", Count:2b}}, sort=nearest, limit=1, distance=0..1] at @s run summon item ~ ~0.1 ~ {Tags:["saddle"], Item:{id:"minecraft:saddle", Count:1b}}
execute as @e[tag=saddle] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:leather", Count:5b}}, limit=1, sort=nearest]
execute as @e[tag=saddle] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:lead", Count:2b}}, limit=1, sort=nearest]
execute as @e[tag=saddle] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 5 normal
execute as @e[tag=saddle] at @s run playsound minecraft:entity.generic.explode master @a
execute as @e[tag=saddle] at @s run playsound block.anvil.destroy master @a
execute as @e[tag=saddle] at @s run tag @s remove saddle

#Floor Item Easter egg
execute as @e[type=item, nbt={Item:{id:"minecraft:stick", Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot", Count:2b, tag:{storm_ingot:1b}}}, distance=0..1, limit=1, sort=nearest] at @s run summon item ~ ~ ~ {Tags:["storm_sword"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Storm Sword","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"-----------------","color":"gray","bold":true,"italic":false}','[{"text":"Storm Sword is","color":"gold","bold":true,"italic":false},{"text":" Unbreakable","color":"aqua","bold":true,"italic":false}]','[{"text":"Sharpness","color":"gold","bold":true,"italic":false},{"text":" Lv.100","color":"aqua","bold":true,"italic":false}]','[{"text":"Smite","color":"gold","bold":true,"italic":false},{"text":" Lv.100","color":"aqua","bold":true,"italic":false}]','[{"text":"Knockback","color":"gold","bold":true,"italic":false},{"text":" Medium","color":"aqua","bold":true,"italic":false}]','{"text":"-------------------","color":"gray"}']},Unbreakable:1b,CustomModelData:123456,stormsword:1b,Enchantments:[{id:"minecraft:sharpness",lvl:100s},{id:"minecraft:smite",lvl:100s},{id:"minecraft:knockback",lvl:3s}], HideFlags:5}}}
execute as @e[tag=storm_sword] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:stick", Count:1b}}, limit=1, sort=nearest]
execute as @e[tag=storm_sword] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot", Count:2b, tag:{storm_ingot:1b}}}, limit=1, sort=nearest]
execute as @e[tag=storm_sword] at @s run playsound entity.lightning_bolt.thunder master @a
execute as @e[tag=storm_sword] at @s run playsound entity.lightning_bolt.impact master @a
execute as @e[tag=storm_sword] at @s run playsound entity.iron_golem.death master @a
execute as @e[tag=storm_sword] at @s run particle explosion_emitter ~ ~ ~ 1 0 1 0 1 normal
execute as @e[tag=storm_sword] at @s run tag @s remove storm_sword

#Floor Nametag
execute as @e[type=item, nbt={Item:{id:"minecraft:paper", Count:4b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot", Count:2b}}, limit=1, distance=0..1, sort=nearest] at @s run summon item ~ ~0.1 ~ {Tags:["name_tag"], Item:{id:"minecraft:name_tag",Count:1b}}
execute as @e[tag=name_tag] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:paper", Count:4b}}, limit=1, sort=nearest]
execute as @e[tag=name_tag] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:gold_ingot", Count:2b}}, limit=1, sort=nearest]
execute as @e[tag=name_tag] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 5 normal
execute as @e[tag=name_tag] at @s run playsound minecraft:entity.generic.explode master @a
execute as @e[tag=name_tag] at @s run playsound block.anvil.destroy master @a
execute as @e[tag=name_tag] at @s run tag @s remove name_tag

#Floor Elytra
execute as @e[type=item, nbt={Item:{id:"minecraft:netherite_chestplate", Count:1b}}] at @s run execute as @e[type=item, nbt={Item:{id:"minecraft:diamond_block", Count:4b}}, sort=nearest, limit=1, distance=0..1] at @s run execute as @e[type=item, nbt={Item:{id:"minecraft:end_crystal", Count:4b}}, sort=nearest, limit=1, distance=0..2] at @s run summon item ~ ~0.1 ~ {Tags:["elytra"], Item:{id:"minecraft:elytra", Count:1b}}
execute as @e[tag=elytra] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:netherite_chestplate", Count:1b}}, sort=nearest, limit=1]
execute as @e[tag=elytra] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:diamond_block", Count:4b}}, sort=nearest, limit=1]
execute as @e[tag=elytra] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:end_crystal", Count:4b}}, sort=nearest, limit=1]
execute as @e[tag=elytra] at @s run particle minecraft:explosion ~ ~ ~ 0 1 0 1 5 normal
execute as @e[tag=elytra] at @s run playsound minecraft:entity.generic.explode master @a
execute as @e[tag=elytra] at @s run playsound block.anvil.destroy master @a
execute as @e[tag=elytra] at @s run tag @s remove elytra

#Floor Storm Iron
execute as @e[type=item, nbt={Item:{id:"minecraft:diamond_block", Count:64b}}] at @s run execute as @e[type=item, nbt={Item:{id:"minecraft:flint_and_steel", Count:1b}}, sort=nearest, limit=1, distance=0..1] at @s run summon item ~ ~0.1 ~ {Tags:["storm_ingot"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Storm Ingot","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"Storm Ingot use for craft Storm Sword","color":"gold","italic":false}']},storm_ingot:1b,Enchantments:[{}]}}}
execute as @e[tag=storm_ingot] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:diamond_block", Count:64b}}, sort=nearest, limit=1]
execute as @e[tag=storm_ingot] at @s run playsound minecraft:entity.firework_rocket.blast master @a
execute as @e[tag=storm_ingot] at @s run playsound minecraft:entity.firework_rocket.launch master @a
execute as @e[tag=storm_ingot] at @s run particle minecraft:firework ~ ~ ~ 1 0 1 0 1000 normal
execute as @e[tag=storm_ingot] at @s run tag @s remove storm_ingot
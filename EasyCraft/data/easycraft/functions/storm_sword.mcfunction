execute as @a[scores={Storm_Sword=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{stormsword:1b}}}] at @s run summon minecraft:lightning_bolt ^ ^-1 ^5
scoreboard players set @a[scores={Storm_Sword=1..}] Storm_Sword 0

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:123456}}}] at @s run particle cloud ~ ~ ~ 1 0 1 0 1
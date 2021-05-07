#add scoreboard
scoreboard objectives add twrk.check dummy {"text": "twrk.check", "color": "aqua"}
scoreboard objectives add twrk.twerk minecraft.custom:minecraft.sneak_time {"text": "twrk.twerk","color": "aqua"}
scoreboard objectives add twrk.do dummy {"text": "twrk.do","color": "aqua"}
scoreboard objectives add twrk.menu trigger
scoreboard objectives add twrk.proc.effect dummy {"text": "twrk.process.effect","color": "red"}

function twerk:run
function twerk:effect/sneaksprint
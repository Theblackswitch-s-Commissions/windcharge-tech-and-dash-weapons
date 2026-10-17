execute store result score #curr_pos_y temp run data get entity @s Pos[1] 1000
scoreboard players operation @s motion_y = #curr_pos_y temp
scoreboard players operation @s motion_y -= @s prev_pos_y
scoreboard players operation @s prev_pos_y = #curr_pos_y temp

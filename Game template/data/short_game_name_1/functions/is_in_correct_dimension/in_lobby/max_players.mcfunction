
    execute store result score red tmp if entity @a[team=sgn1.r_red] 
    execute store result score maxPlayers calc if entity @a[team=sgn1.nr_red] 
    scoreboard players operation red tmp += maxPlayers calc

    execute store result score green tmp if entity @a[team=sgn1.r_green] 
    execute store result score maxPlayers calc if entity @a[team=sgn1.nr_green] 
    scoreboard players operation green tmp += maxPlayers calc

    execute store result score blue tmp if entity @a[team=sgn1.r_blue] 
    execute store result score maxPlayers calc if entity @a[team=sgn1.nr_blue] 
    scoreboard players operation blue tmp += maxPlayers calc

    execute store result score yellow tmp if entity @a[team=sgn1.r_yellow] 
    execute store result score maxPlayers calc if entity @a[team=sgn1.nr_yellow] 
    scoreboard players operation yellow tmp += maxPlayers calc

    execute store result score dark_red tmp if entity @a[team=sgn1.r_dark_red] 
    execute store result score maxPlayers calc if entity @a[team=sgn1.nr_dark_red] 
    scoreboard players operation dark_red tmp += maxPlayers calc

    execute store result score dark_green tmp if entity @a[team=sgn1.r_dark_green] 
    execute store result score maxPlayers calc if entity @a[team=sgn1.nr_dark_green] 
    scoreboard players operation dark_green tmp += maxPlayers calc

    execute store result score dark_blue tmp if entity @a[team=sgn1.r_dark_blue] 
    execute store result score maxPlayers calc if entity @a[team=sgn1.nr_dark_blue] 
    scoreboard players operation dark_blue tmp += maxPlayers calc

    execute store result score gold tmp if entity @a[team=sgn1.r_gold] 
    execute store result score maxPlayers calc if entity @a[team=sgn1.nr_gold] 
    scoreboard players operation gold tmp += maxPlayers calc

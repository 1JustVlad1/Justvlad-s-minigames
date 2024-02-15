clear @s writable_book{clear:1b}
give @s minecraft:writable_book{clear:1b,bug_report:1b,display:{"Name":'{"text":"Сообщите об ошибке","italic":false,"color":"green"}'}}




tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Правила и особенности отправки отзыва:","color":"yellow","italic":false}]
tellraw @s[tag=!msg_cooldown] [{"text":"Использовано отзывов ","color":"gray","italic":true},{"score":{"objective":"bug_reports","name":"@s"}},{"text":"/"},{"score":{"objective":"settings","name":"bug_reports_limit"}},{"text":". Сброс через "},{"score":{"objective":"calc","name":"bug_reports_timer"}},{"text":" минут"}]
tellraw @s[tag=!msg_cooldown] [{"text":" 1. ","color":"gray"},{"text":"ВАЖНО! ","color":"red"},{"text":"Разрешается ","color":"white","italic":false},{"score":{"objective":"settings","name":"bug_reports_limit"},"color":"white","italic":false},{"text":" отзыва в ","color":"white","italic":false},{"score":{"objective":"tmp","name":"bug_reports_timer"},"color":"white","italic":false},{"text":" минут","color":"white","italic":false}]
tellraw @s[tag=!msg_cooldown] [{"text":" 2. ","color":"gray"},{"text":"В отзыв пойдут только первые 3 страницы текста","color":"white","italic":false}]
tellraw @s[tag=!msg_cooldown] [{"text":" 3. ","color":"gray"},{"text":"Отзыв считается отправленным после подписания книги","color":"white","italic":false}]
tellraw @s[tag=!msg_cooldown] [{"text":" 4. ","color":"gray"},{"text":"Пишите кратко и доходчиво. Постарайтесь описать проблему и ваши действия по достижении одинакового результата как можно точнее","color":"white","italic":false}]
tellraw @s[tag=!msg_cooldown] [{"text":" 5. ","color":"gray"},{"text":"Если вы хотите отменить отправку, просто выкиньте книгу","color":"white","italic":false}]




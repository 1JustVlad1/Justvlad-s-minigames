execute as @a run function core:event_helper/bug_reports/check_timer
execute store result score @a gametime run time query gametime

schedule function core:global/loop/every3sec 3s
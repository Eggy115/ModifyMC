# tellraw

## overview

`/tellraw` sends JSON messages to players

## syntax

syntax is `/tellraw <targets> <message>`

## selector

selectors for tellraw are `<playername>`, `@a`, `@s`, `@r`, `@p`, and any kind of selector within e.g. `@a[count=1]`    
tellraw can be sent to any player, excluding all other entities    

## numbers

to do numbers do `/tellraw <selector> <number>` e.g. `/tellraw @a 0134342342`    
see numbers[numbers]

## basic text

do ["fsddf"] or "hsdffsd" e.g. `/tellraw @a "hello"` or `/tellraw @p ["epic"]`
to add multiple lines, use `\n` e.g. `/tellraw @s "line 1\nline 2`    
you can also do `\u00a7` which is section sign so you can get other colours or other fancy symbol like `\u00b1` 

## json text

javascript object notation is special text    
    
- `TEXT` = whatever text you want    
- `COLOUR` = `black`:`0`, `dark_blue`:`1`, `dark_green`:`2`, `dark_aqua`:`3`, `dark_red`:`4`, `dark_purple`:`5`, `gold`:`6`, `light_gray`:`7`, `gray`:`8`, `blue`:`9`, `green`:`a`, `aqua`:`b`, `red`:`c`, `light_purple`:`d`, `yellow`:`e`, `white`:`f`
- `SPECIAL` = `reset`:`r`, `bold`:`l`, `italic`:`o`, `underline`:`n`, `strikethrough`:`m`, `obfuscated`:`k`
- `BOOLEAN` = `true`, `false`

normal text `{"text":":"TEXT"}`       
    
colour `{"text":"TEXT","color":"COLOUR"}`    
    
special `{"text":"TEXT","SPECIAL":"BOOLEAN"}`     
        
both `{"text":"TEXT","color":"COLOUR","SPECIAL":"BOOLEAN"}`
    
multiple `[{"text":"TEXT","color":"COLOUR"},{"text":"TEXT","color":"COLOUR"}]`
    
multiplemore `[{"text":"TEXT","color":"COLOUR","SPECIAL":"BOOLEAN"},{"text":"TEXT","color":"COLOUR","SPECIAL":"BOOLEAN"}]`   
    
web links ` `   
   
run command ` `     
   
chat ` `    
    
hovertext ` `    
    
suggest ` `   

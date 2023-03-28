# tellraw

## overview

`/tellraw` sends JSON messages to players

## syntax

syntax is `/tellraw <targets> <message>`

## selector

selectors for tellraw are `<playername>`, `@a`, `@s`, `@r`, `@p`, and any kind of selector within e.g. `@a[count=1]`    
tellraw can be sent to any player, excluding all other entities    

## numbers

to do numbers do `/tellraw <targets> <number>`   
e.g. `/tellraw @a 0134342342`    

## basic text

do ["fsddf"] or "hsdffsd" e.g. `/tellraw @a "hello"` or `/tellraw @p ["epic"]`     
to add multiple lines, use `\n` e.g. `/tellraw @s "line 1\nline 2`       
you can also do `\u00a7` which is section sign so you can get other colours       
or other fancy symbol like `"\u00b9\u00b2\u00b3"` which would have to the power of 1, 2, 3     

## json text

javascript object notation is special text    
   
- `COLOUR` = `black`:`0`, `dark_blue`:`1`, `dark_green`:`2`, `dark_aqua`:`3`, `dark_red`:`4`, `dark_purple`:`5`, `gold`:`6`, `light_gray`:`7`, `gray`:`8`, `blue`:`9`, `green`:`a`, `aqua`:`b`, `red`:`c`, `light_purple`:`d`, `yellow`:`e`, `white`:`f`
- `SPECIAL` = `reset`:`r`, `bold`:`l`, `italic`:`o`, `underlinec`:`n`, `strikethrough`:`m`, `obfuscated`:`k`

### normal text 

```py
/tellraw Eggy115 {"text":"hello"}
```
    
### colour 

`{"text":"hello","color":"green"}`    
    
### effects 

`{"text":"text","bold":"true"}`     
        
### colour & effects

`{"text":"text","color":"red","italic":"true"}`
    
### multiple colours 

`[{"text":"helloooo ","color":"gold"},{"text":"more text","color":"blue"}]`
    
### multiple colours & effects 

`[{"text":"some text here","color":"blue","underlined":"true"},{"text":" and more text","color":"light_purple","obfuscated":"false"}]`   
    
### web links 

`{"text":"url","clickEvent":{"action":"open_url","value":"https://github.com/Eggy115"}}`   
   
### run command 

`{"text":"run command","clickEvent":{"action":"run_command","value":"say hello"}}`     
   
### suggest command 

`{"text":"suggest command","clickEvent":{"action":"suggest_command","value":"/say hello"}}`    
    
### copy 

`{"text":"copy to clipboard","clickEvent":{"action":"copy_to_clipboard","value":"i just got copied"}}`        
    
### hoverEvent 

#### show_text

/tellraw @p {"text":"hover","hoverEvent":{"action":"show_text","contents":[{"text":"hello"}]}}
/tellraw @p {"text":"hover","hoverEvent":{"action":"show_text","contents":[{"text":"hello"}]}}

#### show_item

/tellraw @p {"text":"hover","hoverEvent":{"action":"show_item","contents":"diamond"}}
/tellraw @p {"text":"hover","hoverEvent":{"action":"show_item","contents":"dirt"}}

### show_entity

can't get this to work

#### fonts

/tellraw @p {"text":"font","font":"minecraft:default"}
/tellraw @p {"text":"font","font":"minecraft:illageralt"}
/tellraw @p {"text":"font","font":"minecraft:alt"}
      

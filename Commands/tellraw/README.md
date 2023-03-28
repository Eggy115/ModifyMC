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

```py
/tellraw @a 0134342342

/tellraw @s 25

/tellraw @r 5.5

/tellraw @p 0

/tellraw Eggy115 -3

/tellraw @a -3.221
```
   
these all just display numbers

## basic text

to display simply text use `/tellraw <targets> ["<text>"]` or `/tellraw <targets> "<text>"`       
it has to be `"`, `'` will not work  
 
```py
/tellraw @a "hello"

/tellraw Eggy115 ["yeah, whooo"]
```

to add multiple lines, use `\n`

```py
/tellraw @s "\nline 1\nline 2"
```

to escape characters, use `\`

```py
/tellraw @a "hello \"world\" "
```

you can also do `\u00a7` which is section sign so you can get colours and effects

```py
/tellraw @a "\u00a7ahello"
```

or you can use to get other fancy symbol

```py
/tellraw @r `"\u00b9\u00b2\u00b3"
```     


## json text

javascript object notation is special text    
   
- `COLOUR` = `black`:`0`, `dark_blue`:`1`, `dark_green`:`2`, `dark_aqua`:`3`, `dark_red`:`4`, `dark_purple`:`5`, `gold`:`6`, `light_gray`:`7`, `gray`:`8`, `blue`:`9`, `green`:`a`, `aqua`:`b`, `red`:`c`, `light_purple`:`d`, `yellow`:`e`, `white`:`f`
- `EFFECTS` = `reset`:`r`, `bold`:`l`, `italic`:`o`, `underlined`:`n`, `strikethrough`:`m`, `obfuscated`:`k`

### display types

display types are what kind of thing you are displaying

#### text

```py
{"text":"text"}
```

#### translate

```py
/tellraw @p {"translate":"value","fallback":"fallback","with":["with"]}
```

#### keybind

```py
/tellraw @p {"keybind":"key.jump"}
```

#### objective

```py
/tellraw @p {"score":{"name":"@p","objective":"Kills"}}
```

#### selector

```py
/tellraw @p {"selector":"@p"}
```


### normal text 

to display normal text the proper way, use `{"text":"message here"}`

```py
/tellraw Eggy115 {"text":"hello"}
/tellraw @a {"text":"this is a fun message"}
```

to display multiple sections of text, use `[]`

```py
/tellraw @a [{"text":"hello"},{"text":" world"}]
```
    
### colour 

to have colour, use `{"text":"put your text here","color":"put colour here"}`    

```py
/tellraw @a {"text":"hello","color":"green"}
```
    
### effects 

to add effects like bold use `{"text":"text here","effect":"true/false"}`     

```py
/tellraw @s {"text":"epic","bold":"true"}
```
        
### combining

to have both colour and effects

```py
/tellraw Eggy115 {"text":"text","color":"red","italic":"true"}
```

to have multiple colours    

```py
[{"text":"helloooo ","color":"gold"},{"text":"more text","color":"blue"}]
```
    
and to have multiple colours and effects

```py
[{"text":"some text here","color":"blue","underlined":"true"},{"text":" and more text","color":"light_purple","obfuscated":"false"}]
```
    
### web links 

to have web link

```py
/tellraw @r {"text":"url","clickEvent":{"action":"open_url","value":"https://github.com/Eggy115"}}
```
   
### run command 

run command

```py
/tellraw @p {"text":"run command","clickEvent":{"action":"run_command","value":"say hello"}}
```
   
### suggest command 

suggest command or message

```py
/tellraw @s {"text":"suggest command","clickEvent":{"action":"suggest_command","value":"/say hello"}}
```
    
### copy 

copy to clipboard

```py
/tellraw @a {"text":"copy to clipboard","clickEvent":{"action":"copy_to_clipboard","value":"i just got copied"}}
```
    
### hoverEvent 

#### show_text

show text

```py
/tellraw @p {"text":"hover","hoverEvent":{"action":"show_text","contents":[{"text":"hello"}]}}
/tellraw @p {"text":"hover","hoverEvent":{"action":"show_text","contents":[{"text":"hello"}]}}
```

#### show_item

display item

```py
/tellraw @p {"text":"hover","hoverEvent":{"action":"show_item","contents":"diamond"}}
/tellraw @p {"text":"hover","hoverEvent":{"action":"show_item","contents":"dirt"}}
```

#### show_entity

can't get this to work

### fonts

to have different fonts

```py
/tellraw @p {"text":"font","font":"minecraft:default"}
/tellraw @p {"text":"font","font":"minecraft:illageralt"}
/tellraw @p {"text":"font","font":"minecraft:alt"}
```  

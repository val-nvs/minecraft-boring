# Wireless-Powered Boring Machine - Minecraft Datapack

1.21.8

Folder `\tesla_boring\` goes inside `\datapacks\` in your world save
```
.minecraft\saves\[your_world]\datapacks\tesla_boring
```


## Crafting
### recipe




## Special syntax in `\function-master\`

(space = `・`)(tab = `———`)

example:
```
!execute・as・@s・at・@s・run・
———say・hello

!give・@p・
———coal[
——————item_model="diamond",
——————item_name="Diamond"
———]・1
```
after running .bat, it generates in `\function\`:
```
execute・as・@s・at・@s・run・say・hello
give・@p・coal[item_model="diamond",item_name="Diamond"]・1
```
It just deletes all tabs, and all line-breaks except when line starts with `!`. Don't forget the spaces

Sublime Text
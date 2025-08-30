# Wireless-Powered Boring Machine - Minecraft Datapack
1.21.8

Folder `\tesla_boring\` goes inside `\datapacks\` in your world save
```.minecraft\saves\[your_world]\datapacks\tesla_boring```

### Special syntax in `\function-master\`
> space = `・`

> tab = `———`

example:
```
!execute・as・@s・run・
———execute・at・@s・run・
——————say・hello
```
after running .bat, in `\function\` it generates:
```
execute・as・@s・run・execute・at・@s・run・say・hello
```
it just deletes tabs, and line breaks in unless line started with `!`

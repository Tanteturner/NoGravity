blueprint = ""

with open( "D:\\.minecraft\\saves\\NoGravity 3\\datapacks\\itemsystem\\data\\is\\item_modifiers\\slots\\blueprint.json", 'r') as f:
    blueprint = f.read()

for i in range(0,35):
    with open( "D:\\.minecraft\\saves\\NoGravity 3\\datapacks\\itemsystem\\data\\is\\item_modifiers\\slots\\" + str(i) + '.json', 'w') as f:
        f.write(blueprint.replace("SLOT-ID",str(i)))
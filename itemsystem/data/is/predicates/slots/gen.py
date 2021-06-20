for i in range(0,35):
    with open( "D:\\.minecraft\\saves\\NoGravity 3\\datapacks\\itemsystem\\data\\is\\predicates\\slots\\" + str(i) + '.json', 'w') as f:
        f.write("[{\"condition\": \"minecraft:entity_properties\",\"entity\": \"this\",\"predicate\": {\"nbt\": \"{Inventory:[{Slot:" + str(i) + "b}]}\"}},{\"condition\": \"minecraft:inverted\",\"term\": {\"condition\": \"minecraft:entity_properties\",\"entity\": \"this\",\"predicate\": {\"nbt\": \"{Inventory:[{Slot:" + str(i) + "b,tag:{Modified:1b}}]}\"}}}]")

#,tag:{Modified:1b}


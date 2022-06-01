from furnace import Furnace
from assebling_machine import AssemblingMachine
from mining_drill import MiningDrill
from solar_panel import SolarPanel

import random

class Exponential:
  def __init__(self, tier_count):
    self.colors = []
    self.count = tier_count

  def preGenColors(self):
    colors = []
    n = 1
    
    while n <= self.count:
      r = round((round(random.uniform(20.33, 100.00), 2)) / 100.0, 2)
      g = round((round(random.uniform(20.33, 100.00), 2)) / 100.0, 2)
      b = round((round(random.uniform(20.33, 100.00), 2)) / 100.0, 2)

      colors.append((r, g, b))
      n += 1
    
    print("Pregenerated: "+str(self.count)+" colors")
    return colors

  def GenerateFurnaces(self):
    n = 1
    while n <= self.count:
      furnace = Furnace(n, self.colors[n - 1]);
      furnace.SaveFile("exponential_0.0.2/prototypes/furnace/");
      furnace.SaveIcon("exponential_0.0.2/graphics/icons/furnace/")
      n += 1

    print("Generated: "+str(self.count)+" furnaces")

  def GenerateSolarPanels(self):
    n = 1
    while n <= self.count:
      solarpanel = SolarPanel(n, self.colors[n - 1]);
      solarpanel.SaveFile("exponential_0.0.2/prototypes/solar-panel/");
      solarpanel.SaveIcon("exponential_0.0.2/graphics/icons/solar-panel/")
      n += 1

    print("Generated: "+str(self.count)+" solar panels")

  def GenerateMiningDrills(self):
    n = 1
    while n <= self.count:
      furnace = MiningDrill(n, self.colors[n - 1]);
      furnace.SaveFile("exponential_0.0.2/prototypes/mining-drill/");
      furnace.SaveIcon("exponential_0.0.2/graphics/icons/mining-drill/")
      n += 1

    print("Generated: "+str(self.count)+" mining drills")

  def GenerateAssemblingMachines(self):
    n = 1
    while n <= self.count:
      assembling_machine = AssemblingMachine(n, self.colors[n - 1]);
      assembling_machine.SaveFile("exponential_0.0.2/prototypes/assembling-machine/");
      assembling_machine.SaveIcon("exponential_0.0.2/graphics/icons/assembling-machine/")
      n += 1
    
    print("Generated: "+str(self.count)+" assembling-machines")
  
  def GenerateTranslation(self):
    data = ""
    f = open("exponential_0.0.2/locale/en/exponential.cfg", "w")
    n = 1
    while n <= self.count:
      data += "exp-furnace-t"+str(n)+"=Furnace T"+str(n)+" \n"
      n += 1
    
    n = 1
    while n <= self.count:
      data += "exp-assembling-machine-t"+str(n)+"=Assembling machine T"+str(n)+" \n"
      n += 1

    n = 1
    while n <= self.count:
      data += "exp-mining-drill-t"+str(n)+"=Mining drill T"+str(n)+" \n"
      n += 1
    
    n = 1
    while n <= self.count:
      data += "exp-solar-panel-t"+str(n)+"=Solar panel T"+str(n)+" \n"
      n += 1

    f.write('[entity-name]\n')
    f.write(data)

    f.write('[item-name]\n')
    f.write(data)

    f.write('[recipe-name]\n')
    f.write(data)

    f.write('[technology-name]\n')
    f.write(data)

    f.write('[technology-description]\n\n')
    f.write('[mod-setting-name]\n\n')
    f.write('[mod-setting-description]\n\n')

    f.close()
    print("Generated: translations")

  def GenerateData(self):
    n = 1
    f = open("exponential_0.0.2/data.lua", "w")
    while n <= self.count:
      f.write('require ("prototypes.assembling-machine.exp-assembling-machine-t'+str(n)+'") \n')
      n += 1
    
    n = 1
    while n <= self.count:
      f.write('require ("prototypes.furnace.exp-furnace-t'+str(n)+'") \n')
      n += 1
    
    n = 1
    while n <= self.count:
      f.write('require ("prototypes.mining-drill.exp-mining-drill-t'+str(n)+'") \n')
      n += 1

    n = 1
    while n <= self.count:
      f.write('require ("prototypes.solar-panel.exp-solar-panel-t'+str(n)+'") \n')
      n += 1

    f.close()
    print("Generated: data file")

  def Build(self):
    self.colors = self.preGenColors()

    self.GenerateAssemblingMachines()
    self.GenerateFurnaces()
    self.GenerateMiningDrills()
    self.GenerateSolarPanels()

    self.GenerateTranslation()
    self.GenerateData()

exponential = Exponential(100)
exponential.Build()
def getRandMegaAbility

    abilities = [
        "STENCH", "DRIZZLE", "SPEEDBOOST", "BATTLEARMOR", "STURDY", "DAMP", "LIMBER", "SANDVEIL", "STATIC", "VOLTABSORB",
        "WATERABSORB", "OBLIVIOUS", "CLOUDNINE", "COMPOUNDEYES", "INSOMNIA", "COLORCHANGE", 
        "IMMUNITY", "FLASHFIRE", "SHIELDDUST", "OWNTEMPO", "SUCTIONCUPS", "INTIMIDATE", "SHADOWTAG", "ROUGHSKIN", "WONDERGUARD",
        "LEVITATE", "EFFECTSPORE", "SYNCHRONIZE", "CLEARBODY", "NATURALCURE", "LIGHTNINGROD", "SERENEGRACE", "SWIFTSWIM", 
        "CHLOROPHYLL", "ILLUMINATE", "TRACE", "HUGEPOWER", "POISONPOINT", "INNERFOCUS", 
        "MAGMAARMOR","WATERVEIL","MAGNETPULL","SOUNDPROOF","RAINDISH","SANDSTREAM","PRESSURE","THICKFAT","EARLYBIRD","FLAMEBODY",
        "RUNAWAY","KEENEYE","HYPERCUTTER","PICKUP","TRUANT","HUSTLE","CUTECHARM", 
        "PLUS", "MINUS", "FORECAST", "STICKYHOLD", "SHEDSKIN", "GUTS", "MARVELSCALE", "LIQUIDOOZE", "OVERGROW", 
        "BLAZE", "TORRENT", "SWARM", "ROCKHEAD", "DROUGHT", "ARENATRAP", "VITALSPIRIT", "WHITESMOKE", "PUREPOWER", 
        "SHELLARMOR", "AIRLOCK", "TANGLEDFEET", "MOTORDRIVE", "RIVALRY", "STEADFAST", "SNOWCLOAK", "GLUTTONY", 
        "ANGERPOINT", "UNBURDEN", "HEATPROOF", "SIMPLE", "DRYSKIN", "DOWNLOAD", "IRONFIST", "POISONHEAL", "ADAPTABILITY", 
        "SKILLLINK", "HYDRATION", "SOLARPOWER", "QUICKFEET", "NORMALIZE", "SNIPER", "MAGICGUARD", "NOGUARD", 
        "STALL", "TECHNICIAN", "LEAFGUARD", "KLUTZ", "MOLDBREAKER", "SUPERLUCK", "AFTERMATH", "ANTICIPATION", 
        "FOREWARN", "UNAWARE", "TINTEDLENS", "FILTER", "SLOWSTART", "SCRAPPY", "STORMDRAIN", "ICEBODY", "SOLIDROCK", 
        "SNOWWARNING", "HONEYGATHER", "FRISK", "RECKLESS", "MULTITYPE", "FLOWERGIFT", "BADDREAMS", 
        "PICKPOCKET", "SHEERFORCE", "STEELWORKER", "UNNERVE", "DEFIANT", "DEFEATIST", "CURSEDBODY", "HEALER", 
        "FRIENDGUARD", "WEAKARMOR", "HEAVYMETAL", "LIGHTMETAL", "MULTISCALE", "TOXICBOOST", "FLAREBOOST", "HARVEST", 
        "TELEPATHY", "MOODY", "OVERCOAT", "POISONTOUCH", 
        "REGENERATOR", "BIGPECKS", "SANDRUSH", "WONDERSKIN", "ANALYTIC", "ILLUSION", "IMPOSTER", "INFILTRATOR", 
        "MUMMY", "MOXIE", "JUSTIFIED", "RATTLED", "MAGICBOUNCE", "SAPSIPPER", "PRANKSTER", "SANDFORCE", "IRONBARBS",
        "ZENMODE", "VICTORYSTAR", "TURBOBLAZE", "TERAVOLT", 
        "SLUSHRUSH", "PIXILATE", "COLEOPTERO", "PIELHELADA", "TOUGHCLAWS", "PODERSABIO", "PARENTALBOND", 
        "PIELMALDITA", "PIELELECTRICA", "ESPANTO", "CABEZAHIELO", "WATERBUBBLE", "STAMINA", "INFLAMABLE", "STRONGJAW", 
        "FURCOAT", "AERILATE", "COMPETITIVE", 
        "MEGALAUNCHER", "FLUFFY", "SOBRECARGA", "ALBINISMO", "CONTRARY", "LIQUIDVOICE", "PROTEAN", "DISGUISE", 
        "STANCECHANGE", "PIELHERBACEA", "FLORACION", "ELECTRICSURGE", "PSYCHICSURGE", "GRASSYSURGE", "MISTYSURGE", 
        "GOOEY", "TRIAGE", "NEUROFORCE", 
        "BERSERK", "MERCILESS", "STEAMENGINE", "GALEWINGS", "CORTANTE"
    ]
    
    begin
        random_ability = abilities[rand(205)]
    end while random_ability == 'WONDERGUARD' || random_ability == 'PUREPOWER' || random_ability == 'MOODY' || random_ability == 'DISGUISE'


    return random_ability.to_sym
end

ability_dict = {
    "VENUSAUR" => getRandMegaAbility(),
    "CHARIZARD" => getRandMegaAbility(),
    "BLASTOISE" => getRandMegaAbility(),
    "GRENINJA" => getRandMegaAbility(),
    "ALAKAZAM" => getRandMegaAbility(),
    "GENGAR" => getRandMegaAbility(),
    "KANGASKHAN" => getRandMegaAbility(),
    "PINSIR" => getRandMegaAbility(),
    "GYARADOS" => getRandMegaAbility(),
    "AERODACTYL" => getRandMegaAbility(),
    "AMPHAROS" => getRandMegaAbility(),
    "SCIZOR" => getRandMegaAbility(),
    "HERACROSS" => getRandMegaAbility(),
    "HOUNDOOM" => getRandMegaAbility(),
    "TYRANITAR" => getRandMegaAbility(),
    "BLAZIKEN" => getRandMegaAbility(),
    "GARDEVOIR" => getRandMegaAbility(),
    "AGGRON" => getRandMegaAbility(),
    "MEDICHAM" => getRandMegaAbility(),
    "MANECTRIC" => getRandMegaAbility(),
    "ABSOL" => getRandMegaAbility(),
    "GARCHOMP" => getRandMegaAbility(),
    "LUCARIO" => getRandMegaAbility(),
    "BEEDRILL" => getRandMegaAbility(),
    "PIDGEOT" => getRandMegaAbility(),
    "STEELIX" => getRandMegaAbility(),
    "SCEPTILE" => getRandMegaAbility(),
    "SWAMPERT" => getRandMegaAbility(),
    "SABLEYE" => getRandMegaAbility(),
    "SHARPEDO" => getRandMegaAbility(),
    "CAMERUPT" => getRandMegaAbility(),
    "ALTARIA" => getRandMegaAbility(),
    "GLALIE" => getRandMegaAbility(),
    "SALAMENCE" => getRandMegaAbility(),
    "METAGROSS" => getRandMegaAbility(),
    "GALLADE" => getRandMegaAbility(),
    "BUTTERFREE" => getRandMegaAbility(),
    "MACHAMP" => getRandMegaAbility(),
    "KINGLER" => getRandMegaAbility(),
    "LAPRAS" => getRandMegaAbility(),
    "GARDOBOR" => getRandMegaAbility(),
    "CORVIKNIGHT" => getRandMegaAbility(),
    "ORBEETLE" => getRandMegaAbility(),
    "DREDNAW" => getRandMegaAbility(),
    "COALOSSAL" => getRandMegaAbility(),
    "APPLETUN" => getRandMegaAbility(),
    "FLAPPLE" => getRandMegaAbility(),
    "SANDACONDA" => getRandMegaAbility(),
    "TOXTRICITY" => getRandMegaAbility(),
    "CENTISKORCH" => getRandMegaAbility(),
    "HATTERENE" => getRandMegaAbility(),
    "GRIMMSNARL" => getRandMegaAbility(),
    "ALCREMIE" => getRandMegaAbility(),
    "COPPERAJAH" => getRandMegaAbility(),
    "DURALUDON" => getRandMegaAbility(),
    "LOPUNNY" => getRandMegaAbility(),
    "ABOMASNOW" => getRandMegaAbility()
}

MultipleForms.register(:VENUSAUR,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:VENUSAURITE)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [80,100,123,80,122,120] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["VENUSAUR"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 24 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 1555 if pokemon.form==1
   next
}
})


  def makeBusted
    f = self.getBustedForm
    self.form = f
  end

  def isBusted?
    bf = self.getBustedForm
    if bf==self.form
      return true
    else
      return false
    end
  end

  def makeDisguised
    df = self.getDisguiseForm
    self.form = df if df>=0
  end

  def getDisguiseForm
    return -1 if !isBusted?
      disguiseform = self.form-1	
    return disguiseform   # form number
  end

  def hasBustedForm?
    bf = self.getBustedForm
    return bf>0 && bf!=self.form
  end

  def getBustedForm
    if self.hasAbility?(:DISFRAZ)
      return 1 
    else
      return-1
    end
  end
  
  
MultipleForms.register(:CHARIZARD,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:CHARIZARDITEX)
   next 2 if isConst?(pokemon.item,PBItems,:CHARIZARDITEY)
   next
},
"getMegaName"=>proc{|pokemon|
   next _INTL("Mega Charizard X") if pokemon.form==1
   next _INTL("Mega Charizard Y") if pokemon.form==2
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [78,130,111,100,130,85] if pokemon.form==1
   next [78,104,78,100,159,115] if pokemon.form==2
   next
},
"type2"=>proc{|pokemon|
   next getID(PBTypes,:DRAGON) if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["CHARIZARD"]),0]] if pokemon.form==1
   next [[getID(PBAbilities, ability_dict["CHARIZARD"]),0]] if pokemon.form==2
   next
},
"weight"=>proc{|pokemon|
   next 1105 if pokemon.form==1
   next 1005 if pokemon.form==2
   next
}
})

MultipleForms.register(:BLASTOISE,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:BLASTOISINITE)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [79,103,120,78,135,115] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["BLASTOISE"]),0]] if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 1011 if pokemon.form==1
   next
}
})


MultipleForms.register(:GRENINJA,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:GRENINJITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [72,145,67,132,153,71] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["GRENINJA"]),0]] if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 1011 if pokemon.form==1
   next
}
})

MultipleForms.register(:ALAKAZAM,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:ALAKAZAMITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [55,50,65,150,175,95] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["ALAKAZAM"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:GENGAR,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:GENGARITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [60,75,80,130,160,95] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["GENGAR"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 14 if pokemon.form==1
   next
}
})

MultipleForms.register(:KANGASKHAN,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:KANGASKHANITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [105,115,100,100,60,100] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["KANGASKHAN"]),0]] if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 1000 if pokemon.form==1
   next
}
})

MultipleForms.register(:PINSIR,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:PINSIRITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [65,155,120,105,65,90] if pokemon.form==1
   next
},
"type2"=>proc{|pokemon|
   next getID(PBTypes,:FLYING) if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["PINSIR"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 17 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 590 if pokemon.form==1
   next
}
})

MultipleForms.register(:GYARADOS,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:GYARADOSITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [95,155,109,81,70,130] if pokemon.form==1
   next
},
"type2"=>proc{|pokemon|
   next getID(PBTypes,:DARK) if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["GYARADOS"]),0]] if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 3050 if pokemon.form==1
   next
}
})

MultipleForms.register(:AERODACTYL,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:AERODACTYLITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [80,135,85,150,70,95] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["AERODACTYL"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 21 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 790 if pokemon.form==1
   next
}
})



MultipleForms.register(:AMPHAROS,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:AMPHAROSITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [90,95,105,45,165,110] if pokemon.form==1
   next
},
"type2"=>proc{|pokemon|
   next getID(PBTypes,:DRAGON) if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["AMPHAROS"]),0]] if pokemon.form==1
   next
}
})

MultipleForms.register(:SCIZOR,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:SCIZORITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [70,150,140,75,65,100] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["SCIZOR"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 20 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 1250 if pokemon.form==1
   next
}
})

MultipleForms.register(:HERACROSS,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:HERACROSSITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [80,185,115,75,40,105] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["HERACROSS"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 17 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 625 if pokemon.form==1
   next
}
})

MultipleForms.register(:HOUNDOOM,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:HOUNDOOMITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [75,90,90,115,140,90] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["HOUNDOOM"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 19 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 495 if pokemon.form==1
   next
}
})

MultipleForms.register(:TYRANITAR,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:TYRANITARITE)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [100,164,150,71,95,120] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["TYRANITAR"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 25 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 2550 if pokemon.form==1
   next
}
})

MultipleForms.register(:BLAZIKEN,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:BLAZIKENITE)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [80,160,80,100,130,80] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["BLAZIKEN"]),0]] if pokemon.form==1
   next
}
})

MultipleForms.register(:GARDEVOIR,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:GARDEVOIRITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [68,95,65,100,155,135] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["GARDEVOIR"]),0]] if pokemon.form==1
   next
}
})



MultipleForms.register(:AGGRON,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:AGGRONITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [70,140,230,50,60,80] if pokemon.form==1
   next
},
"type2"=>proc{|pokemon|
   next getID(PBTypes,:STEEL) if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["AGGRON"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 22 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 3950 if pokemon.form==1
   next
}
})

MultipleForms.register(:MEDICHAM,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:MEDICHAMITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [60,100,85,100,80,85] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["MEDICHAM"]),0]] if pokemon.form==1
   next
}
})

MultipleForms.register(:MANECTRIC,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:MANECTRITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [70,75,80,135,135,80] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["MANECTRIC"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 18 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 440 if pokemon.form==1
   next
}
})



MultipleForms.register(:ABSOL,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:ABSOLITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [65,150,60,115,115,60] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["ABSOL"]),0]] if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 490 if pokemon.form==1
   next
}
})

MultipleForms.register(:GARCHOMP,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:GARCHOMPITE)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [108,170,115,92,120,95] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["GARCHOMP"]),0]] if pokemon.form==1
   next
}
})

MultipleForms.register(:LUCARIO,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:LUCARITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [70,145,88,112,140,70] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["LUCARIO"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 13 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 575 if pokemon.form==1
   next
}
})



# Mega Evoluciones ORAS ##########################################################

MultipleForms.register(:BEEDRILL,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:BEEDRILLITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [65,150,40,145,15,80] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["BEEDRILL"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 14 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 405 if pokemon.form==1
   next
}
})

MultipleForms.register(:PIDGEOT,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:PIDGEOTITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [83,80,80,121,135,80] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["PIDGEOT"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 22 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 505 if pokemon.form==1
   next
}
})


MultipleForms.register(:STEELIX,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:STEELIXITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [75,125,230,30,55,95] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["STEELIX"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 105 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 7400 if pokemon.form==1
   next
}
})

MultipleForms.register(:SCEPTILE,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:SCEPTILITE)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [70,145,75,145,110,85] if pokemon.form==1
   next
},
"type2"=>proc{|pokemon|
   next getID(PBTypes,:DRAGON) if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["SCEPTILE"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 19 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 552 if pokemon.form==1
   next
}
})

MultipleForms.register(:SWAMPERT,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:SWAMPERTITE)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [100,150,110,70,95,110] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["SWAMPERT"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 19 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 1020 if pokemon.form==1
   next
}
})

MultipleForms.register(:SABLEYE,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:SABLEYITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [50,125,95,110,65,85] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["SABLEYE"]),0]] if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 1610 if pokemon.form==1
   next
}
})

MultipleForms.register(:SHARPEDO,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:SHARPEDITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [70,140,70,105,110,65] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["SHARPEDO"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 25 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 1303 if pokemon.form==1
   next
}
})

MultipleForms.register(:CAMERUPT,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:CAMERUPTITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [70,120,100,30,135,105] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["CAMERUPT"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 25 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 3205 if pokemon.form==1
   next
}
})

MultipleForms.register(:ALTARIA,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:ALTARITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [75,110,110,90,120,105] if pokemon.form==1
   next
},
"type1"=>proc{|pokemon|
   next getID(PBTypes,:FAIRY) if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["ALTARIA"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 15 if pokemon.form==1
   next
}
})

MultipleForms.register(:GLALIE,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:GLALIEITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [80,130,80,100,130,80] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["GLALIE"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 21 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 3502 if pokemon.form==1
   next
}
})

MultipleForms.register(:SALAMENCE,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:SALAMENCITE)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [95,145,130,120,120,90] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["SALAMENCE"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 18 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 1126 if pokemon.form==1
   next
}
})

MultipleForms.register(:METAGROSS,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:METAGROSSITE)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [80,145,150,110,105,110] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["METAGROSS"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 25 if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 9429 if pokemon.form==1
   next
}
})


MultipleForms.register(:GALLADE,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:GALLADITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [68,155,95,110,75,115] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["GALLADE"]),0]] if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 564 if pokemon.form==1
   next
}
})

MultipleForms.register(:BUTTERFREE,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:BUTTERFREEITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [60,55,70,110,120,130] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["BUTTERFREE"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:MACHAMP,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:MACHAMPITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [90,160,100,75,75,95] if pokemon.form==1
   next
},
"type2"=>proc{|pokemon|
   next getID(PBTypes,:GROUND) if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["MACHAMP"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:KINGLER,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:KINGLERITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [75,170,135,75,70,70] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["KINGLER"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:LAPRAS,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:LAPRASITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [130,95,100,80,125,105] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["LAPRAS"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:GARBODOR,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:GARBODORITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [100,125,112,55,95,112] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["GARBODOR"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:CORVIKNIGHT,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:CORVIKNIGHTITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [98,117,125,87,73,95] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["CORVIKNIGHT"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:ORBEETLE,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:ORBEETLEITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [60,65,130,100,110,140] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["ORBEETLE"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:DREDNAW,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:DREDNAWITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [90,145,130,74,58,88] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["DREDNAW"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:COALOSSAL,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:COALOSSALITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [110,110,140,30,110,110] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["COALOSSAL"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:APPLETUN,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:FLAPPLETUNITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [110,105,100,50,120,100] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["APPLETUN"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:FLAPPLE,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:FLAPPLETUNITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [110,125,100,50,100,100] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["FLAPPLE"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})


MultipleForms.register(:SANDACONDA,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:SANDACONDITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [72,137,125,131,75,80] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["SANDACONDA"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:TOXTRICITY,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:TOXTRICITITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [75,118,90,95,144,80] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["TOXTRICITY"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:CENTISKORCH,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:CENTISKORCHITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [100,145,95,95,100,90] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["CENTISKORCH"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:HATTERENE,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:HATTERENITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [57,110,115,49,156,123] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["HATTERENE"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:GRIMMSNARL,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:GRIMMSNARLITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [95,150,85,90,115,75] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["GRIMMSNARL"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:ALCREMIE,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:ALCREMITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [65,80,105,64,130,151] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["ALCREMIE"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:COPPERAJAH,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:COPPERAJITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [122,150,99,80,80,69] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["COPPERAJAH"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})

MultipleForms.register(:DURALUDON,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:DURALUDONITA)
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getBaseStats"=>proc{|pokemon|
   next [70,115,135,105,140,70] if pokemon.form==1
   next
},
"getAbilityList"=>proc{|pokemon|
   next [[getID(PBAbilities, ability_dict["DURALUDON"]),0]] if pokemon.form==1
   next
},
"height"=>proc{|pokemon|
   next 12 if pokemon.form==1
   next
}
})



#Megas iniciales y fakémon

MultipleForms.register(:LOPUNNY,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:LOPUNNITA  )
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getMegaName"=>proc{|pokemon|
   next _INTL("Mega Lopunny") if pokemon.form==1
   next
},
"getBaseStats"=>proc{|pokemon|
   next [65,136,94,135,54,96] if pokemon.form==1
   next
},
"ability"=>proc{|pokemon|
   next getID(PBAbilities, ability_dict["LOPUNNY"]) if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 1011 if pokemon.form==1
   next
},
"onSetForm"=>proc{|pokemon,form|
   pbSeenForm(pokemon)
}
})


MultipleForms.register(:ABOMASNOW,{
"getMegaForm"=>proc{|pokemon|
   next 1 if isConst?(pokemon.item,PBItems,:ABOMASNOWITA  )
   next
},
"getUnmegaForm"=>proc{|pokemon|
   next 0
},
"getMegaName"=>proc{|pokemon|
   next _INTL("Mega Abomasnow") if pokemon.form==1
   next
},
"getBaseStats"=>proc{|pokemon|
   next [90,132,105,30,132,105] if pokemon.form==1
   next
},
"ability"=>proc{|pokemon|
   next getID(PBAbilities, ability_dict["ABOMASNOW"]) if pokemon.form==1
   next
},
"weight"=>proc{|pokemon|
   next 1011 if pokemon.form==1
   next
},
"onSetForm"=>proc{|pokemon,form|
   pbSeenForm(pokemon)
}
})
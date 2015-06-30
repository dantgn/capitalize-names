#based on http://dzone.com/snippets/capitalize-proper-names
class CapitalizeNames

  def self.capitalize(name)
    suffixes = ["II", "(II)", "III", "(III)", "IV", "(IV)", "VI", "(VI)", "VII", "(VII)", "2nd", "(2nd)", "3rd", "(3rd)", "4th", "(4th)", "5th", "(5th)"]

    surnames = ["ApShaw", "d'Albini", "d'Aubigney", "d'Autry", "d'Entremont", "d'Hurst", "D'ovidio", "DaSilva", "DeAnda", "deAnnethe", "deAubigne", "deAubigny", "DeBardelaben", "DeBardeleben", "DeBaugh", "deBeauford", "DeBerry", "deBethune", "DeBetuile", "DeBoard", "DeBoer", "DeBohun", "DeBord", "DeBose", "DeBrouwer", "DeBroux", "DeBruhl", "deBruijn", "deBrus", "deBruse", "deBrusse", "DeBruyne", "DeBusk", "DeCamp", "deCastilla", "DeCello", "deClare", "DeClark", "DeClerck", "DeCoste", "deCote", "DeCoudres", "DeCoursey", "DeCredico", "deCuire", "DeCuyre", "DeDominicios", "DeDuyster", "DeDuytscher", "DeDuytser", "deFiennes", "DeFord", "DeForest", "DeFrance", "DeFriece", "DeGarmo", "deGraaff", "DeGraff", "DeGraffenreid", "DeGraw", "DeGrenier", "DeGroats", "DeGroft", "DeGrote", "DeHaan", "DeHaas", "DeHaddeclive", "deHannethe", "DeHatclyf", "DeHaven", "DeHeer", "DeJager", "DeJarnette", "DeJean", "DeJong", "deJonge", "deKemmeter", "deKirketon", "DeKroon", "deKype", "del-Rosario", "dela Chamotte", "DeLa Cuadra", "DeLa Force", "dela Fountaine", "dela Place", "DeLa Ward", "DeLaci", "DeLacy", "DeLaet", "DeLalonde", "DelAmarre", "DeLancey", "DeLascy", "DelAshmutt", "DeLassy", "DeLattre", "DeLaughter", "DeLay", "deLessine", "DelGado", "DelGaudio", "DeLiberti", "DeLoache", "DeLoatch", "DeLoch", "DeLockwood", "DeLong", "DeLozier", "DeLuca", "DeLucenay", "deLucy", "DeMars", "DeMartino", "deMaule", "DeMello", "DeMinck", "DeMink", "DeMoree", "DeMoss", "DeMott", "DeMuynck", "deNiet", "DeNise", "DeNure", "DePalma", "DePasquale", "dePender", "dePercy", "DePoe", "DePriest", "DePu", "DePui", "DePuis", "DeReeper", "deRochette", "deRose", "DeRossett", "DeRover", "deRuggele", "deRuggle", "DeRuyter", "deSaint-Sauveur", "DeSantis", "desCuirs", "DeSentis", "DeShane", "DeSilva", "DesJardins", "DesMarest", "deSoleure", "DeSoto", "DeSpain", "DeStefano", "deSwaert", "deSwart", "DeVall", "DeVane", "DeVasher", "DeVasier", "DeVaughan", "DeVaughn", "DeVault", "DeVeau", "DeVeault", "deVilleneuve", "DeVilliers", "DeVinney", "DeVito", "deVogel", "DeVolder", "DeVolld", "DeVore", "deVos", "deVries", "DeWall", "DeWaller", "DeWalt", "deWashington", "deWerly", "deWessyngton", "DeWet", "deWinter", "DeWitt", "DeWolf", "DeWolfe", "DeWolff", "DeWoody", "DeYager", "DeYarmett", "DeYoung", "DiCicco", "DiCredico", "DiFillippi", "DiGiacomo", "DiMarco", "DiMeo", "DiMonte", "DiNonno", "DiPietro", "diPilato", "DiPrima", "DiSalvo", "du Bosc", "du Hurst", "DuFort", "DuMars", "DuPre", "DuPue", "DuPuy", "FitzUryan", "kummel", "LaBarge", "LaBarr", "LaBauve", "LaBean", "LaBelle", "LaBerteaux", "LaBine", "LaBonte", "LaBorde", "LaBounty", "LaBranche", "LaBrash", "LaCaille", "LaCasse", "LaChapelle", "LaClair", "LaComb", "LaCoste", "LaCount", "LaCour", "LaCroix", "LaFarlett", "LaFarlette", "LaFerry", "LaFlamme", "LaFollette", "LaForge", "LaFortune", "LaFoy", "LaFramboise", "LaFrance", "LaFuze", "LaGioia", "LaGrone", "LaLiberte", "LaLonde", "LaLone", "LaMaster", "LaMay", "LaMere", "LaMont", "LaMotte", "LaPeer", "LaPierre", "LaPlante", "LaPoint", "LaPointe", "LaPorte", "LaPrade", "LaRocca", "LaRochelle", "LaRose", "LaRue", "LaRussa", "LaVallee", "LaVaque", "LaVeau", "LeBleu", "LeBoeuf", "LeBoiteaux", "LeBoyteulx", "LeCheminant", "LeClair", "LeClerc", "LeCompte", "LeCroy", "LeDuc", "LeFevbre", "LeFever", "LeFevre", "LeFlore", "LeGette", "LeGrand", "LeGrave", "LeGro", "LeGros", "LeJeune", "LeMaistre", "LeMaitre", "LeMaster", "LeMesurier", "LeMieux", "LeMoe", "LeMoigne", "LeMoine", "LeNeve", "LePage", "LeQuire", "LeQuyer", "LeRou", "LeRoy", "LeSuer", "LeSueur", "LeTardif", "LeVally", "LeVert", "LoMonaco", "Macabe", "Macaluso", "MacaTasney", "Macaulay", "Macchitelli", "Maccoone", "Maccurry", "Macdermattroe", "Macdiarmada", "Macelvaine", "Macey", "Macgraugh", "Machan", "Machann", "Machum", "Maciejewski", "Maciel", "Mackaben", "Mackall", "Mackartee", "Mackay", "Macken", "Mackert", "Mackey", "Mackie", "Mackin", "Mackins", "Macklin", "Macko", "Macksey", "Mackwilliams", "Maclean", "Maclinden", "Macomb", "Macomber", "Macon", "Macoombs", "Macraw", "Macumber", "Macurdy", "Macwilliams", "MaGuinness", "MakCubyn", "MakCumby", "Mcelvany", "Mcsherry", "Op den Dyck", "Op den Graeff", "regory", "SchweiÃŸguth", "StElmo", "StGelais", "StJacques", "te Boveldt", "VanAernam", "VanAken", "VanAlstine", "VanAmersfoort", "VanAntwerp", "VanArlem", "VanArnam", "VanArnem", "VanArnhem", "VanArnon", "VanArsdale", "VanArsdalen", "VanArsdol", "vanAssema", "vanAsten", "VanAuken", "VanAwman", "VanBaucom", "VanBebber", "VanBeber", "VanBenschoten", "VanBibber", "VanBilliard", "vanBlare", "vanBlaricom", "VanBuren", "VanBuskirk", "VanCamp", "VanCampen", "VanCleave", "VanCleef", "VanCleve", "VanCouwenhoven", "VanCovenhoven", "VanCowenhoven", "VanCuren", "VanDalsem", "VanDam", "VanDe Poel", "vanden Dijkgraaf", "vanden Kommer", "VanDer Aar", "vander Gouwe", "VanDer Honing", "VanDer Hooning", "vander Horst", "vander Kroft", "vander Krogt", "VanDer Meer", "vander Meulen", "vander Putte", "vander Schooren", "VanDer Veen", "VanDer Ven", "VanDer Wal", "VanDer Weide", "VanDer Willigen", "vander Wulp", "vander Zanden", "vander Zwan", "VanDer Zweep", "VanDeren", "VanDerlaan", "VanDerveer", "VanderWoude", "VanDeursen", "VanDeusen", "vanDijk", "VanDoren", "VanDorn", "VanDort", "VanDruff", "VanDryer", "VanDusen", "VanDuzee", "VanDuzen", "VanDuzer", "VanDyck", "VanDyke", "VanEman", "VanEmmen", "vanEmmerik", "VanEngen", "vanErp", "vanEssen", "VanFleet", "VanGalder", "VanGelder", "vanGerrevink", "VanGog", "vanGogh", "VanGorder", "VanGordon", "VanGroningen", "VanGuilder", "VanGundy", "VanHaaften", "VanHaute", "VanHees", "vanHeugten", "VanHise", "VanHoeck", "VanHoek", "VanHook", "vanHoorn", "VanHoornbeeck", "VanHoose", "VanHooser", "VanHorn", "VanHorne", "VanHouten", "VanHoye", "VanHuijstee", "VanHuss", "VanImmon", "VanKersschaever", "VanKeuren", "VanKleeck", "VanKoughnet", "VanKouwenhoven", "VanKuykendaal", "vanLeeuwen", "vanLent", "vanLet", "VanLeuven", "vanLingen", "VanLoozen", "VanLopik", "VanLuven", "vanMaasdijk", "VanMele", "VanMeter", "vanMoorsel", "VanMoorst", "VanMossevelde", "VanNaarden", "VanNamen", "VanNemon", "VanNess", "VanNest", "VanNimmen", "vanNobelen", "VanNorman", "VanNormon", "VanNostrunt", "VanNote", "VanOker", "vanOosten", "VanOrden", "VanOrder", "VanOrma", "VanOrman", "VanOrnum", "VanOstrander", "VanOvermeire", "VanPelt", "VanPool", "VanPoole", "VanPoorvliet", "VanPutten", "vanRee", "VanRhijn", "vanRijswijk", "VanRotmer", "VanSchaick", "vanSchelt", "VanSchoik", "VanSchoonhoven", "VanSciver", "VanScoy", "VanScoyoc", "vanSeters", "VanSickle", "VanSky", "VanSnellenberg", "vanStaveren", "VanStraten", "VanSuijdam", "VanTassel", "VanTassell", "VanTessel", "VanTexel", "VanTuyl", "VanValckenburgh", "vanValen", "VanValkenburg", "VanVelsor", "VanVelzor", "VanVlack", "VanVleck", "VanVleckeren", "VanWaard", "VanWart", "VanWassenhove", "VanWinkle", "VanWoggelum", "vanWordragen", "VanWormer", "VanZuidam", "VanZuijdam", "VonAdenbach", "vonAllmen", "vonBardeleben", "vonBerckefeldt", "VonBergen", "vonBreyman", "VonCannon", "vonFreymann", "vonHeimburg", "VonHuben", "vonKramer", "vonKruchenburg", "vonPostel", "VonRohr", "VonRohrbach", "VonSass", "VonSasse", "vonSchlotte", "VonSchneider", "VonSeldern", "VonSpringer", "VonVeyelmann", "VonZweidorff"]

    mc = /^Mc(\w)(?=\w)/i 
    mac = /^Mac(\w)(?=\w)/i
    oap = /^O'(\w)(?=\w)/i
    hyphens_index = []
    while name.index('-') do
      index = name.index('-')
      hyphens_index << index
      name = name[0...index] + ' ' + name[index+1..-1]
    end

    name = name.split.map{|w| w.capitalize}.map{ |w| 
      begin 
        w.gsub(mc, "Mc" + w[2].upcase)
      rescue
        w 
      end
      }.map{|w| 
        begin 
          w.gsub(mac, "Mac" + w[3].upcase)
        rescue
          w 
        end
      }.map{|w| 
        begin 
          w.gsub(oap, "O'" + w[2].upcase)
        rescue
          w 
        end
      }

    name = name.join(' ')
    hyphens_index.each do |index|
      name = name[0...index] + '-' + name[index+1..-1]
    end
    
    name = name.gsub("Van ", "van ").gsub("De ", "de ").gsub("Dit ", "dit ")
    name += ' '

    (surnames + suffixes).each do |surname|
      pos = name.downcase.index(surname.downcase)
      if pos 
        # surname/suffix must be:
        # 1. at start of name or after a space or a -
        #          -and-
        # 2. followed by the end of string or a space or a -
        if ( ((pos == 0) or (pos > 0 and (name[pos-1] == ' ' or name[pos-1] == '-'))) and ((name.length == pos+surname.length) or (name[pos+surname.length] == ' ') or (name[pos+surname.length] == '-')) )
          name = name[0...pos] + surname + name[pos+surname.length..-1]
        end
      end
    end
    name.strip
  end
end
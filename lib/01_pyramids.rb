# Demande le nombre d'étages
def ask_floor
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  puts "> "
  return gets.chomp.to_i # ask_floor retourne la valeur de l'utilisateur, 5 par exemple
end

# Construis un étage
def build_floor(total_floor,current_floor) # a besoin pour fonctionner de connaître l'étage en cours et le total d'étages souhaités
  print "_"*(current_floor-total_floor) # pour le rdc current_floor est à 1 et total_floor à 5 selon notre exemple donc 4x" "
  print "#"*(2*total_floor-1) # pour le rdc total_floor est à 2*5-1 = 9 ??? wtf ???
  puts # qu'est-ce qu'il fout là lui ??? Si on l'efface tout foire !
end

# Construis la pyramide
def build_pyramid(total_floor)
  puts "Voici la pyramide :"
  total_floor.times do |current_floor|
    build_floor(current_floor+1,total_floor)
  end
end

# Fonction qui va tout lancer d'un coup (comme le perform) 
def full_pyramid
  build_pyramid(ask_floor)
end

full_pyramid
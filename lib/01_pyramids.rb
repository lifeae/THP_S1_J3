def how_much_stairs
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  stairs = gets.chomp.to_i
  while stairs < 1 || stairs > 25
    puts "Abuse-pas et choisis un nombre entre 1 et 25 s'il te plaît. Alors ... combien d'étages ?"
    stairs = gets.chomp.to_i
  end
  puts "Voici la pyramide :"
  return stairs
end
  
def half_pyramid(stairs)
  i = 1
  while i <= stairs
    i.times
      j = stairs - i
      puts (" "*j + "#"*i) 
      i += 1
  end
end

def full_pyramid(stairs)
  i = 1
  while i <= stairs
    i.times
      puts "#"*i 
      i += 1
  end
end

def perform
  stairs = how_much_stairs
  half_pyramid(stairs)
  full_pyramid(stairs)
end

perform
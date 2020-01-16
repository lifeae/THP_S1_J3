def half_pyramid(etage)
  e = etage
  d = 1
  i = 1
  while i <= etage
    puts (" "*e + "#"*d)
    e -=1
    d +=2
    i +=1
  end
end
def wtf(etage)
  e = etage
  d = 1
  i = 1
  while i <= etage/2
    puts (" "*e + "#"*d)
    e -=1
    d +=2
    i +=1
  end
  while i <= etage
    puts (" "*e + "#"*d)
    e +=1
    d -=2
    i +=1
  end
  if etage.even? #odd = impair even=pair
  then puts (" "*etage+"#")
end
end
def perform
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage(s) veux-tu ?"
  print "> "
  etage = gets.chomp.to_i
  wtf(etage)
end
perform
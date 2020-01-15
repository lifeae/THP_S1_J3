def ask_stairs_number
  puts "Mets un nombre pour voir ma belle pyramide"
  stairs = gets.chomp.to_i
  return stairs
end

def full_pyramid(stairs)
  i = 1
  k = 0
  while i <= stairs
    i.times
      j = stairs - i
      puts (" "*j + "#"*i + "#"*k)
      i += 1
      k += 1
  end
end

def perform
  stairs = ask_stairs_number
  full_pyramid(stairs)
end

perform
$avengers_name = ["hulk","blackwidow","hawkeye","thor","captainamerica","ironman"]
puts "Enter avengers name"
name = gets.chomp.split(',')
avg1 = name[0]
avg2 = name[1]
if $avengers_name.include?(avg1)
  puts "Avenger is available"
else
  puts "Create New avengers"
end
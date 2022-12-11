$hulk = []
def assign 
  puts "Enter Mission Name"
  mname = gets.chomp
  if $hulk.length == 0 || $hulk.length == 1
    $hulk.push(mname)
    puts $hulk
  else
    puts "He is already doing Two task"
  end
  assign
end
assign
puts $hulk
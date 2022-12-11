$hulk = []
$thor = []
$blackwidow = []
$hawkeye = []
$ironman = []
$capatinamerica = []
$go_get_hulk = {mission_name: $mname,avg1: $name1,avg2: $name1}

puts $hulk.length
require "./data.rb"

class Shield
  def avg1
    puts "Enter Avengers Name"
    $name1 = gets.chomp
    puts "Mission Name"
    $mname = gets.chomp
    if $name1 == "Hulk"
      if $hulk.length == 0 || $hulk.length == 1
        $hulk.push($mname)
      elsif $hulk.length == 2
        puts "You Cant assign him a task He is already working in two task"
      end
      puts $hulk.length
    end
    if $name1 == "CaptainAmerica"
      if $capatinamerica.length == 0 || $capatinamerica.length == 1
        $capatinamerica.push($mname)
      elsif $capatinamerica.length == 2
        puts "You Cant assign him a task He is already working in two task"
        # break
      end
      puts $capatinamerica.length
    end
    if $name1 == "Thor"
      if $thor.length == 0 || $thor.length == 1
        $thor.push($mname)
      elsif $thor.length == 2
        puts "You Cant assign him a task He is already working in two task"
        # break
      end
      puts $thor.length
    end
    if $name1 == "BlackWidow"
      if $blackwidow.length == 0 || $blackwidow.length == 1
        $blackwidow.push($mname)
      elsif $blackwidow.length == 2
        puts "You Cant assign him a task He is already working in two task"
        # break
      end
      puts $blackwidow.length
    end
    if $name1 == "IronMan"
      if $ironman.length == 0 || $ironman.length == 1
        $ironman.push($mname)
      elsif $ironman.length == 2
        puts "You Cant assign him a task He is already working in two task"
        # break
      end
      puts $ironman.length
    end
    if $name1 == "hawkeye"
      if $hawkeye.length == 0 || $hawkeye.length == 1
        $hawkeye.push($mname)
      elsif $hawkeye.length == 2
        puts "You Cant assign him a task He is already working in two task"
        # break
      end
      puts $hawkeye.length
    end
    if $mname == "Go and Get Hulk"
      if $go_get_hulk.length == 0 || $go_get_hulk == 1
        $go_get_hulk.push($mname)
      else
        puts "Two Avengers are already working in it"
      end
    end
    puts $go_get_hulk
    first
  end
  def avg2
    if name1 == "Hulk" || name2 == "Thor" || name1 == "Thor" || name2 == "Hulk"
  end
      
   


  def first
    puts "Welcome to Your Interface"
    puts "Enter Your Choice"
    puts "1. Check the missions
    2. Assign mission to Avengers
    3. Check mission’s details
    4. Check Avenger’s details
    5. Update Mission’s status
    6. List Avengers
    7. Assign avenger to mission"
    puts "Enter Your Choice"
    num = gets.chomp.to_i

    case num 
    when 1
      status
    when 2
      assign
    when 3 
    end
  end 

  def status
    if $hulk.size == 0 && $thor.size == 0 && $blackwidow.size == 0 && $hawkeye.size == 0 &&$ironman.size == 0 && $capatinamerica.size == 0
      puts "No Task is assigned"
    else 
      puts "Task is assigned"
    end
  end

  def assign 
    puts "Enter The Number Of avengers you want to assign task"
    number = gets.chomp.to_i
    if number == 1
      avg1
    elsif number == 2
      avg2
    end
  end
end


puts "Enter Your Name"
name = gets.chomp
if name == "Fury"
  obj = Shield.new
  obj.first
else
  puts "Wrong Access"
end

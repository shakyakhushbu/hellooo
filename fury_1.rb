# require 'byebug'
# $hulk = []
# $thor = []
# $blackwidow = []
# $ironman = []
# $hawkeye = []
# $captain = []

$hulk = []
$thor = []
$blackwidow = []
$ironman = []
$hawkeye = []
$captain = []
class Shield
  

  def assign

  puts "Enter The number of avenger you want to assign task at a time tou can only assign 1 or 2 avengers"
  no = gets.chomp.to_i
     
    if no == 1
      puts "Enter Avenger Name"
      $name1 = gets.chomp
      puts "Enter Mission Name"
      mname = gets.chomp
      if $name1 == "Hulk"
        if $hulk.length == 0 || $hulk.length == 1
          $hulk.push(mname)
          puts $hulk
        else
          puts "You cannot assign Hulk any task he is already doing two task"
        end
      end
      if $name1 == "Thor"
        if $thor.length == 0 || $thor.length == 1
          $thor.push(mname)
        else
          puts "You cannot assign Thor any task he is already doing two task"
        end
      end
      if $name1 == "CaptainAmerica"
        if $captain.length == 0 || $captain.length == 1
          $captain.push(mname)
        else
          puts "You cannot assign CaptainAmerica any task he is already doing two task"
        end
      end
      if $name1 == "Hawkeye"
        if $hawkeye.length == 0 || $hawkeye.length == 1
          $hawkeye.push(mname)
        else
          puts "You cannot assign Hawkeye any task he is already doing two task"
        end
      end
      if $name1 == "BlackWidow"
        if $blackwidow.length == 0 || $blackwidow.length == 1
          $blackwidow.push(mname)
        else
          puts "You cannot assign BlackWidow any task he is already doing two task"
        end
      end
      if $name1 == "IronMan"
        if $ironman.length == 0 || $ironman.length == 1
          $ironman.push(mname)
        else
          puts "You cannot assign IronMan any task he is already doing two task"
        end
      end
    elsif no == 2
      puts "Enter Avengers Name"
      $name1 = gets.chomp
      $name2 = gets.chomp
      puts "Enter Mission Name"
      mname == gets.chomp
      if ($name1 == "Thor" && $name2 == "Hulk") || ($name1 == "Hulk" && $name2 == "Thor")
        if $thor.length == 0 || $thor.length == 1
          $thor.push(mname)
        else
          puts "You cannot assign Thor any task he is already doing two task"
        end
        if $hulk.length == 0 || $hulk.length == 1
          $hulk.push(mname)
        else
          puts "You cannot assign Hulk any task he is already doing two task"
        end

      elsif ($name1 == "Thor" && $name2 == "IronMan") || ($name1 == "IronMan" && $name2 == "Thor")
        if $thor.length == 0 || $thor.length == 1
          $thor.push(mname)
        else
          puts "You cannot assign Thor any task he is already doing two task"
        end
        if $ironman.length == 0 || $ironman.length == 1
          $ironman.push(mname)
        else
          puts "You cannot assign IronMan any task he is already doing two task"
        end
        byebug
      elsif ($name1 && "Thor" && $name2 == "BlackWidow") || ($name1 == "BlackWidow" && $name1 == "Thor")
        if $thor.length == 0 || $thor.length == 1
          $thor.push(mname)
        else
          puts "You cannot assign Thor any task he is already doing two task"
        end
        if $blackwidow.length == 0 || $blackwidow.length == 1
          $blackwidow.push(mname)
        else
          puts "You cannot assign BlackWidow any task he is already doing two task"
        end
      elsif ($name1 == "Thor" && $name2 == "Hawkeye") || ($name1 == "Hawkeye" && $name2 == "Thor")
        if $thor.length == 0 || $thor.length == 1
          $thor.push(mname)
        else
          puts "You cannot assign Thor any task he is already doing two task"
        end
        if $hawkeye.length == 0 || $hawkeye.length == 1
          $hawkeye.push(mname)
        else
          puts "You cannot assign Hawkeye any task he is already doing two task"
        end
      elsif ($name1 == "Thor" && $name2 == "CaptainAmerica") || ($name1 == "CaptainAmerica" && $name2 == "Thor")
        if $thor.length == 0 || $thor.length == 1
          $thor.push(mname)
        else
          puts "You cannot assign Thor any task he is already doing two task"
        end
        if $captain.length == 0 || $captain.length == 1
          $captain.push(mname)
        else
          puts "You cannot assign CaptainAmerica any task he is already doing two task"
        end
      elsif ($name1 == "CaptainAmerica" && $name2 == "Hulk") || ($name1 == "Hulk" && $name2 == "CaptainAmerica")
        if $captain.length == 0 || $captain.length == 1
          $captain.push(mname)
        else
          puts "You cannot assign CaptainAmerica any task he is already doing two task"
        end
        if $hulk.length == 0 || $hulk.length == 1
          $hulk.push(mname)
        else
          puts "You cannot assign Hulk any task he is already doing two task"
        end
      elsif ($name1 == "CaptainAmerica" && $name2 == "Hawkeye") || ($name1 == "Hawkeye" && $name2 == "CaptainAmerica")
        if $captain.length == 0 || $captain.length == 1
          $captain.push(mname)
        else
          puts "You cannot assign CaptainAmerica any task he is already doing two task"
        end
        if $hawkeye.length == 0 || $hawkeye.length == 1
          $hawkeye.push(mname)
        else
          puts "You cannot assign Hawkeye any task he is already doing two task"
        end
      elsif ($name1 == "CaptainAmerica" && $name2 == "BlackWidow") || ($name1 == "BlackWidow" && $name2 == "CaptainAmerica")
        if $captain.length == 0 || $captain.length == 1
          $captain.push(mname)
        else
          puts "You cannot assign CaptainAmerica any task he is already doing two task"
        end
        if $blackwidow.length == 0 || $blackwidow.length == 1
          $blackwidow.push(mname)
        else
          puts "You cannot assign BlackWidow any task he is already doing two task"
        end
      elsif ($name1 == "CaptainAmerica" && $name2 == "IronMan") || ($name1 == "IronMan" && $name2 == "CaptainAmerica")
        if $captain.length == 0 || $captain.length == 1
          $captain.push(mname)
        else
          puts "You cannot assign CaptainAmerica any task he is already doing two task"
        end
        if $ironman.length == 0 || $ironman.length == 1
          $ironman.push(mname)
        else
          puts "You cannot assign IronMan any task he is already doing two task"
        end
      elsif ($name1 == "Hulk" && $name2 == "Hawkeye") || ($name1 == "Hawkeye" && $name2 == "Hulk")
        if $hulk.length == 0 || $hulk.length == 1
          $hulk.push(mname)
        else
          puts "You cannot assign Hulk any task he is already doing two task"
        end
        if $hawkeye.length == 0 || $hawkeye.length == 1
          $hawkeye.push(mname)
        else
          puts "You cannot assign Hawkeye any task he is already doing two task"
        end
      elsif ($name1 == "Hulk" && $name2 == "BlackWidow") || ($name1 == "BlackWidow" && $name2 == "Hulk")
        if $hulk.length == 0 || $hulk.length == 1
          $hulk.push(mname)
        else
          puts "You cannot assign Hulk any task he is already doing two task"
        end
        if $blackwidow.length == 0 || $blackwidow.length == 1
          $blackwidow.push(mname)
        else
          puts "You cannot assign BlackWidow any task he is already doing two task"
        end
      elsif ($name1 == "Hulk" && $name2 == "IronMan") || ($name1 == "IronMan" && $name2 == "Hulk")
        if $hulk.length == 0 || $hulk.length == 1
          $hulk.push(mname)
        else
          puts "You cannot assign Hulk any task he is already doing two task"
        end
        if $ironman.length == 0 || $ironman.length == 1
          $ironman.push(mname)
        else
          puts "You cannot assign  IronMan any task he is already doing two task"
        end
      elsif ($name1 == "Hawkeye" && $name2 == "BlackWidow") || ($name1 == "BlackWidow" || $name2 == "Hawkeye")
        if $hawkeye.length == 0 || $hawkeye.length == 1
          $hawkeye.push(mname)
        else
          puts "You cannot assign Hawkeye any task he is already doing two task"
        end
        if $blackwidow.length == 0 || $blackwidow.length == 1
          $blackwidow.push(mname)
        else
          puts "You cannot assign BlackWidow any task he is already doing two task"
        end
      elsif ($name1 == "Hawkeye" && $name2 == "IronMan") || ($name1 == "IronMan" && $name2 == "Hawkeye")
        if $hawkeye.length == 0 || $hawkeye.length == 1
          $hawkeye.push(mname)
        else
          puts "You cannot assign Hawkeye any task he is already doing two task"
        end
        if $ironman.length == 0 || $ironman.length == 1
          $ironman.push(mname)
        else
          puts "You cannot assign IronMan any task he is already doing two task"
        end
      elsif ($name1 == "BlackWidow" && $name2 == "IronMan") || ($name1 == "IronMan" && $name2 == "BlackWidow")
        if $blackwidow.length == 0 || $blackwidow.length == 1
          $blackwidow.push(mname)
        else
          puts "You cannot assign BlackWidow any task he is already doing two task"
        end
        if $ironman.length == 0 || $ironman.length == 1
          $ironman.push(mname)
        else
          puts "You cannot assign IronMan any task he is already doing two task"
        end
        puts $hulk 
        puts $thor  
        puts $blackwidow
      end
    else
      puts "Entered Wrong Choice"
    end
    first
  end











  
















  def mission_details
    go_get_hulk = {missiond: "not given",avg1: "not given",
    avg2: "Not Given",mission_status: "Not given"}
    get_the_stone = {missiond: "not given ",avg1: "not given",
    avg2: "Not Given",mission_status: "Not given"}

    find_spiderman = {missiond: "not given",avg1: "not given",
    avg2: "Not Given",mission_status: "Not given"}

    find_thanos = {missiond: "not given",avg1: "not given",
    avg2: "Not Given",mission_status: "Not given"}

    get_loki = {missiond: "not given",avg1: "not given",
    avg2: "Not Given",mission_status: "Not given"}

    if $number == 1
      puts "Mission Detail = #{go_get_hulk[:missiond]}"
      puts "MIssion Status = #{go_get_hulk[:mission_status]}"
      puts "Avengers Name = #{go_get_hulk[:avg1]},#{go_get_hulk[:avg2]}"
    elsif $number == 2
      puts "Mission Detail = #{get_loki[:missiond]}"
      puts "MIssion Status = #{get_loki[:mission_status]}"
      puts "Avengers Name = #{get_loki[:avg1]},#{get_loki[:avg2]}"
    elsif $number == 3
      puts "Mission Detail = #{find_thanos[:missiond]}"
      puts "MIssion Status = #{find_thanos[:mission_status]}"
      puts "Avengers Name = #{find_thanos[:avg1]},#{find_thanos[:avg2]}"
    elsif $number == 4
      puts "Mission Detail = #{find_spiderman[:missiond]}"
      puts "MIssion Status = #{find_spiderman[:mission_status]}"
      puts "Avengers Name = #{find_spiderman[:avg1]},#{find_spiderman[:avg2]}"
    elsif $number == 5
      puts "Mission Detail = #{get_the_stone[:missiond]}"
      puts "MIssion Status = #{get_the_stone[:mission_status]}"
      puts "Avengers Name = #{get_the_stone[:avg1]},#{get_the_stone[:avg2]}"
    end



  end


  def avengers_details
    $hulk = {perosn_name: "Banel",mission_completed: 0,mission_assigned: 0}
    $iron = {perosn_name: "Tony Stark",mission_completed: 0,mission_assigned: 0}
    $capatinamerica = {perosn_name: "Steve",mission_completed: 0,mission_assigned: 0}
    $blackwidow = {perosn_name: "Natasha",mission_completed: 0,mission_assigned: 0}
    $hawkeye = {perosn_name: "Bruce",mission_completed: 0,mission_assigned: 0}
    $thor = {perosn_name: "Odison",mission_completed: 0,mission_assigned: 0}
    puts "Enter Name"
    nam = gets.chomp
    if nam == "Hulk"
      puts "Name = #{$hulk[:perosn_name]}"
      puts "Mission Assigned = #{$hulk[:mission_assigned]}"
      puts "Mission Copleted = #{$hulk[:mission_completed]}" 
    elsif nam == "Thor"
      puts "Name = #{$thor[:perosn_name]}"
      puts "Mission Assigned = #{$thor[:mission_assigned]}"
      puts "Mission Copleted = #{$thor[:mission_completed]}" 
    elsif nam == "Captain America"
      puts "Name = #{$captainamerica[:perosn_name]}"
      puts "Mission Assigned = #{$captainamerica[:mission_assigned]}"
      puts "Mission Copleted = #{$captainamerica[:mission_completed]}"
    

    elsif nam == "BlackWidow"
      puts "Name = #{$blackwidow[:perosn_name]}"
      puts "Mission Assigned = #{$blackwidow[:mission_assigned]}"
      puts "Mission Copleted = #{$blackwidow[:mission_completed]}"
    
    
    elsif nam == "hawkeye"
      puts "Name = #{$hawkeye[:perosn_name]}"
      puts "Mission Assigned = #{$hawkeye[:mission_assigned]}"
      puts "Mission Copleted = #{$hawkeye[:mission_completed]}"
    
    elsif nam == "IronMan"
      puts "Name = #{$iron[:perosn_name]}"
      puts "Mission Assigned = #{$iron[:mission_assigned]}"
      puts "Mission Copleted = #{$iron[:mission_completed]}"
    end
  end
  def first
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
      # avengers_details
    when 2
      assign
    when 3
      puts "You can check the mission details here"
      puts "Enter The number to get the particular mission details"
      puts "Enter 1 To Get The detail of mission : Go and Get Hulk
       Enter 2 To Get The detail of mission : Go And Get Loki
       Enter 1 To Get The detail of mission : Go And Finf Thanos
       Enter 1 To Get The detail of mission : Go And Find Spiderman
       Enter 1 To Get The detail of mission : Go and Get soul Stone"
       $number = gets.chomp.to_i
       mission_details
    when 4
       avengers_details
    end
  end
end
obj = Shield.new
obj.first





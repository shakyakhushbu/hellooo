# require 'byebug'
# require 'rubocop'
$avengers_details = [
  {'avenger_name': 'hulk','mission_completed': 0,'mission_assigned': 0,'mission_name1': '','mission_name2': ''},
  {'avenger_name': 'thor','mission_completed': 0,'mission_assigned': 0,'mission_name1': '','mission_name2': ''},
  {'avenger_name': 'captainamerica','mission_completed': 0,'mission_assigned': 0,'mission_name1': '','mission_name2': ''},
  {'avenger_name': 'hawkeye','mission_completed': 0,'mission_assigned': 0,'mission_name1': '','mission_name2': ''},
  {'avenger_name': 'blackwidow','mission_completed': 0,'mission_assigned': 0,'mission_name1': '','mission_name2': ''},
  {'avenger_name': 'ironman','mission_completed': 0,'mission_assigne': 0,'mission_name1': '','mission_name2': ''},
]
$avengers_name = ["hulk","blackwidow","hawkeye","thor","captainamerica","ironman"]
$count = 0
$mission_details = [
]

class Shield
  def initialize()
    puts "1. Check the missions
    2. Assign mission to Avengers
    3. Check mission’s details
    4. Check Avenger’s details
    5. Update Mission’s status
    6. List Avengers
    7. Assign avenger to mission"
    option = gets.chomp.to_i
    first_step(option)
  end
  # byebug
  def first_step(option) 
    if option == 1
      print "Mission Name\t\t\t\t\t|"
      print "Mission Status\t\t\t\t\|"
      print "Avenegers Details\t\t\t\t|"

      
    # byebug
    if option == 2
      puts "Enter Avengers Name"
      $name = gets.chomp.to_s
      puts "Enter Mission Name"
      $mission_name = gets.chomp
      $arr_name = $name.split(",")
      puts $name1 = $arr_name[0]
      puts $name2 = $arr_name[1]
      puts $arr_name.length
      if $arr_name.length == 1
        one_avenger
      elsif $arr_name.length == 2
        two_avenger($name1,$name2)
      else
        puts "You cant assign to three avengers at a time"
      end
    end
  end

  def create_new_avenger(name)
    puts "Avenger is not found in our detail"
    $new_avenger = {"avenger_name": name,"mission_completed": 0,"mission_assigned": 1,"mission_name1": $mission_name,"mission_name2":""}
    $avengers_details.push($new_avenger)
    puts $avengers_details
    puts "New Avenger is created"
    initialize()
  end

  def assign_mission
    $assign_mission = {"mission_name": $mission_name,"avenger_name1": $name,"avenger_name2": ""}
    $mission_details.push($assign_mission)
    puts mission_details
  end
     
  def one_avenger
    if $avengers_name.include?($name)
      $avengers_details.each do |avg_name|
        if avg_name[:avenger_name].include?($name)
          if avg_name[:mission_name1] == '' && avg_name[:mission_name2] == ''
            avg_name[:mission_name1] = $mission_name
            puts avg_name[:mission_name1]
            puts $avengers_details
          elsif avg_name[:mission_name1] != '' && avg_name[:mission_name2] == ''
            avg_name[:mission_name2] = $mission_name
            puts avg_name[:mission_name1]
            puts avg_name[:mission_name2]
            puts $avengers_details
          else
            puts "#{$name} is already doing two task"
          end
        end
      end
    else
      create_new_avenger($name)
    end
    initialize()
  end
  # byebug
  def two_avenger(avg_name1,avg_name2)
    @avg_name1 = avg_name1
    @avg_name2 = avg_name2
    if $avengers_name.include?(@avg_name1)
      $avengers_details.each do |avg_name|
          if avg_name[:avenger_name].include?(@avg_name1)
            if avg_name[:mission_name1] == '' && avg_name[:mission_name2] == ''
              avg_name[:mission_name1] = $mission_name
              puts avg_name[:mission_name1]
              puts $avengers_details
            elsif avg_name[:mission_name1] != '' && avg_name[:mission_name2] == ''
              avg_name[:mission_name2] = $mission_name
              puts avg_name[:mission_name1]
              puts avg_name[:mission_name2]
              puts $avengers_details
            else
              puts "#{@avg_name1} is already doing two task"
            end
          end
        end
        # initialize()
    else
      puts "#{@avg_name1} is not present i list"
      create_new_avenger(@avg_name1)
    end

    if $avengers_name.include?(@avg_name2)
      $avengers_details.each do |avg_name|
        if avg_name[:avenger_name].include?(@avg_name2)
          if avg_name[:mission_name1] == '' && avg_name[:mission_name2] == ''
            avg_name[:mission_name1] = $mission_name
            puts avg_name[:mission_name1]
            puts $avengers_details
            assign_mission
          elsif avg_name[:mission_name1] != '' && avg_name[:mission_name2] == ''
            avg_name[:mission_name2] = $mission_name
            puts avg_name[:mission_name1]
            puts avg_name[:mission_name2]
            puts $avengers_details
            
          else
            puts "#{@avg_name2} is already doing two task"
          end
        end
      end
      initialize()
      byebug
    else
      puts "#{@avg_name2} is not present in list"
      create_new_avenger(@avg_name2)
    end

  end
end
obj = Shield.new
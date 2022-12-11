# require 'byebug'
# require 'rubocop'
$avengers_details = [
  {avenger_name: 'hulk',mission_completed: 0,mission_assigned: 0,mission_name1: '',mission_name2: ''},
  {avenger_name: 'thor',mission_completed: 0,mission_assigned: 0,mission_name1: '',mission_name2: ''},
  {avenger_name: 'captainamerica',mission_completed: 0,mission_assigned: 0,mission_name1: '',mission_name2: ''},
  {avenger_name: 'hawkeye',mission_completed: 0,mission_assigned: 0,mission_name1: '',mission_name2: ''},
  {avenger_name: 'blackwidow',mission_completed: 0,mission_assigned: 0,mission_name1: '',mission_name2: ''},
  {avenger_name: 'ironman',mission_completed: 0,mission_assigned: 0,mission_name1: '',mission_name2: ''},
]
$mission_details = [ 
  {mission_name: 'go and get hulk',mission_avenger_name: [],mission_status:''},
  {mission_name: 'go and get thanos',mission_avenger_name: [],mission_status:''},
  {mission_name: 'go and get loki',mission_avenger_name: [],mission_status:''},
  {mission_name: 'go and get stone',mission_avenger_name: [],mission_status:''},
  {mission_name: 'go and get spiderman',mission_avenger_name: [],mission_status:''},
]
$avengers_name = ['hulk','blackwidow','hawkeye','thor','captainamerica','ironman']
$mission_names = ["go and get hulk","go and get loki","go and get thanos","go and get spiderman","go and get stone"]
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
  case option 
    when 1 
      $mission_details.each do |a|
        if a[:mission_avenger_name].length == 0
          puts "No mission is assigned to any avenger"
          break
        elsif
          $mission_details.each do |mission|
            if mission[:mission_status] == "assigned"
              puts mission[:mission_name]
              break
            end
          end

        end
      end

      # print "Mission Name\t\t\t\t\t|"
      # print "Mission Status\t\t\t\t\|"
      # print "Avenegers Details\t\t\t\t|"

      # print "#{mission_details[:mission_name]}\t\t\t\t"
      # print "#{avengers_details[:avenger_name]}\t\t\t\t"
      # print "#{[:mission_name]}\t\t\t\t"
    # byebug
    when 2
      puts "Enter Avengers Name"
      $name = gets.chomp.to_s
      puts "Enter Mission Name"
      $mission_name = gets.chomp
      $arr_name = $name.split(',')
      $name1 = $arr_name[0]
      $name2 = $arr_name[1]
      $arr_name.length
      if $arr_name.length == 1
        one_avenger
      elsif $arr_name.length == 2
        two_avenger($name1,$name2)
      else
        puts "You cant assign to three avengers at a time"
      end

    when 3
      check_mission_details
    end
  end

  def create_new_avenger(name)
    puts "Avenger is not found in our detail"
    $new_avenger = {"avenger_name": $name,"mission_completed": 0,"mission_assigned": 1,"mission_name1": $mission_name,"mission_name2":""}
    $avengers_details.push($new_avenger)
    puts $avengers_details
    puts "New Avenger is created"
    assign_mission
    initialize()
  end

  def assign_mission
    $mission_details.each do |mission|
      if mission[:mission_name].include?($mission_name)
        if mission[:mission_avenger_name].length == 0
          mission[:mission_avenger_name].push($name)
          mission[:mission_status] = 'assigned'
          puts $mission_details
          initialize()
        elsif mission[:mission_avenger_name].length == 1
          mission[:mission_avenger_name].push($name)
          mission[:mission_status] = 'assigned'
          puts $mission_details
          initialize()
        elsif
          puts "Two avengers are already working it it"
        end
      else
        arr = {mission_name: $mission_name,mission_avenger_name: [],mission_status:'assigned'}
        arr[:mission_avenger_name].push($name)
        $avengers_details.push(arr)
        initialize()
      end
    end
  end
     
  def one_avenger
    if $avengers_name.include?($name)
      $avengers_details.each do |avg_name|
        # byebug
        if avg_name[:avenger_name].include?($name)
          if avg_name[:mission_name1] == '' && avg_name[:mission_name2] == ''
            avg_name[:mission_name1] = $mission_name
            assign_mission
            puts avg_name[:mission_name1]
            puts $avengers_details
          elsif avg_name[:mission_name1] != '' && avg_name[:mission_name2] == ''
            avg_name[:mission_name2] = $mission_name
            puts avg_name[:mission_name1]
            puts avg_name[:mission_name2]
            puts $avengers_details
            assign_mission
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
  def two_avenger(avg_name1,avg_name2)
    @avg_name1 = avg_name1
    @avg_name2 = avg_name2
    if $avengers_name.include?(@avg_name1) && $avengers_name.include?(@avg_name2)
      $avengers_details.each do |avg_name|
        if avg_name[:avenger_name].include?(@avg_name1) 
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
            assign_mission
          else
            puts "#{@avg_name1} is already doing two task"
          end
        end
      end
    elsif 
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
            assign_mission

          else
            puts "#{@avg_name2} is already doing two task"
          end
        end
      end
      initialize()
    else
      puts "#{@avg_name2} is not present in list"
      create_new_avenger(@avg_name2)
    end
  end
  def check_mission_details
    puts "hi"
    puts "Enter Mission name"
    missionname = gets.chomp
    if $mission_names.include?(missionname)
      $mission_details.each do |details|
      # byebug
        if details[:mission_name].include?(missionname)
          if details[:mission_status] == 'assigned'
            puts "Mission Status => #{details[:mission_status]}"
            puts "Avengers Name => #{details[:mission_avenger_name].join(',')}"
          else 
            puts "This Mission is not assigned to anyone"
          end
        end
      end 
    else
      puts "Mission not found"
    end
  end
end
obj = Shield.new
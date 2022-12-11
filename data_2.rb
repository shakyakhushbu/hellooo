# require 'byebug'

# $has = {
#   "hulk" => {"mission_name1" => "na","mission_name2" => "na"},
#   "thor" => {"mission_name1" => "na","mission_name2" => "na"},
#   "blackwidow" => {"mission_name1" => "na","mission_name2" => "na"},
#   "captainamerica" => {"mission_name1" => "na","mission_name2" => "na"},
#   "hawkeye" => {"mission_name1" => "na","mission_name2" => "na"},
#   "ironman" => {"mission_name1" => "na","mission_name2" => "na"},
# }

# $missions = {
#   "1" => {"avg1" => "na","avg2" => "na"},
#   "2" => {"avg1" => "na","avg2" => "na"},
#   "3" => {"avg1" => "na","avg2" => "na"},
#   "4" => {"avg1" => "na","avg2" => "na"},
#   "5" => {"avg1" => "na","avg2" => "na"}
# }

#   class Shield
#     # include Details
#     def assign
#       puts "You can assign only 1 or 2 avengers at a time"
#       puts "Please eneter the number Of avengers i.e enter 1 or 2"
#       number = gets.chomp.to_i
#       case number
#       when 1
#         puts "Enter Any name"
#         $name1 = gets.chomp
#         puts "Please Choose the mission you want to Enter"
#         puts "Enter 1:- To select Go and Get Hulk
#         Enter 2:- To select Go and Get Stone
#         Enter 1:- To select Go and Get SpiderMAn
#         Enter 1:- To select Go and Get Thanos
#         Enter 1:- To select Go and Get Loki"
#         $mname = gets.chomp
#         # byebug
#         if $has.key?($name1)
#           if $has[$name1]["mission_name1"] == "na" && $has[$name1]["mission_name2"] == "na"
#             $has[$name1]["mission_name1"] = $mname
#             puts $has[$name1]
#           elsif $has[$name1]["mission_name1"] != "na" && $has[$name1]["mission_name2"] == "na"
#             $has[$name1]["mission_name2"] = $mname
#             puts $has[$name1]
#           else
#             puts "#{$name1} is Already Working in two task"
#           end
#         end
        
#         if $missions.key?($mname)
#           if $missions[$mname]["avg1"] == "na" && $missions[$mname]["avg2"] == "na"
#             $missions[$mname]["avg1"] = $name1
#           elsif $missions[$mname]["avg1"] != "na" && $missions[$mname]["avg2"] == "na"
#             $missions[$mname]["avg2"] = $name1
#           else
#             puts "Two Avengers are already working on it"
#             puts "Please Choose Again"
#           end
#         end
#         first
#       when 2
#         puts "Enter the names of avengers"
#         $name2 = gets.chomp
#         $name3 = gets.chomp
#         puts "Please Choose the mission you want to Enter"
#         puts "Enter 1:- To select Go and Get Hulk
#         Enter 2:- To select Go and Get Stone
#         Enter 1:- To select Go and Get SpiderMAn
#         Enter 1:- To select Go and Get Thanos
#         Enter 1:- To select Go and Get Loki"
#         # byebug
#         $mname = gets.chomp
#         if $has.key?($name2)
#           if $has[$name2]["mission_name1"] == "na" && $has[$name2]["mission_name2"] == "na"
#             $has[$name2]["mission_name1"] = $mname
#             # puts $has[$name2]
#           elsif $has[$name2]["mission_name1"] != "na" && $has[$name2]["mission_name2"] == "na"
#             $has[$name2]["mission_name2"] = $mname
#             # puts $has[$name2]
#           else
#             puts "#{$name2} is Already Working in two task"
#           end
#         end
  
#         if $has.key?($name3)
#           if $has[$name3]["mission_name1"] == "na" && $has[$name3]["mission_name2"] == "na"
#             $has[$name3]["mission_name1"] = $mname
#             # puts $has[$name3]
#           elsif $has[$name3]["mission_name1"] != "na" && $has[$name3]["mission_name2"] == "na"
#             $has[$name3]["mission_name2"] = $mname
#             # puts $has[$name3]
#           else
#             puts "#{$name3} is Already Working in two task"
#           end
#         end
  
#         if $missions.key?($mname)
#           if $missions[$mname]["avg1"] == "na" && $missions[$mname]["avg2"] == "na"
#             $missions[$mname]["avg1"] = $name2
#             $missions[$mname]["avg2"] = $name3
#           elsif $missions[$mname]["avg1"] != "na" && $missions[$mname]["avg2"] == "na"
#             $missions[$mname]["avg2"] = $name2
#             puts "You can only assign 1 avenger because one is already working on it"
#           else
#             puts "Two Avengers are already working on it"
#             puts "Please Choose Again"
#           end
#         end
#         first
#       end
#     end
  
#     def mission_details
#       puts "Please enter choice of which you want to check details"
#       puts "Please Choose mthe ission you want to Enter"
#       puts "Enter 1:- To select Go and Get Hulk
#       Enter 2:- To select Go and Get Stone
#       Enter 1:- To select Go and Get SpiderMAn
#       Enter 1:- To select Go and Get Thanos
#       Enter 1:- To select Go and Get Loki"
#       puts "Enter any number"
#       $num1 = gets.chomp
#       # byebug
      
#       if $missions.key?($num1)
#           if $missions[$num1]["avg1"] == "na" && $missions[$num1]["avg2"] == "na"
#               puts "Mission is not assigned to any avenger"
#           elsif $missions[$num1]["avg1"] != "na" && $missions[$num1]["avg2"] == "na"
#               puts "Aveneger name is = #{$missions[$num1]["avg1"]}"
#           elsif $missions[$num1]["avg1"] != "na" && $missions[$num1]["avg2"] != "na"
#               puts "AVengers name 1 is #{$missions[$num1]["avg1"]} and Aveneger 2 name #{$missions[$num1]["avg2"]}"         
#           end
#       end
#     end
#     def first
#       puts "Welcome to Your Interface"
#       puts "Enter Your Choice"
#       puts "1. Check the missions
#       2. Assign mission to Avengers
#       3. Check mission’s details
#       4. Check Avenger’s details
#       5. Update Mission’s status
#       6. List Avengers
#       7. Assign avenger to mission"
#       num = gets.chomp.to_i 
#       case num 
#         when 1 
#           # status 
#         when 2
#           assign
#         when 3 
#           mission_details
#         when 4
#           avengers_details
#         when 5
#           update_mission
#         when 6
#           list_avengers
#         when 7
#           assign_mission_to_avengers
#       end
#     end
#   end
#   obj = Shield.new
  # obj.first







name1 = gets.chomp.to_s
a = name1.split(",")
puts a.length
# puts a[1]
# str = "foo,bar,baz"
# puts str.split(",")
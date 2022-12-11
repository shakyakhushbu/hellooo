# module New 
#   def met
#   if name1 == "Hulk"
#       if $hulk.length == 0 || $hulk.length == 1
#         $hulk.push(mname)
#       elsif $hulk.length == 2
#         puts "You Cant assign him a task He is already working in two task"
#         # break
#       end
#       puts $hulk.length
#     end
#     if name1 == "CaptainAmerica"
#       if $capatinamerica.length == 0 || $capatinamerica.length == 1
#         $capatinamerica.push(mname)
#       elsif $capatinamerica.length == 2
#         puts "You Cant assign him a task He is already working in two task"
#         # break
#       end
#       puts $capatinamerica.length
#     end
#     if name1 == "Thor"
#       if $thor.length == 0 || $thor.length == 1
#         $thor.push(mname)
#       elsif $thor.length == 2
#         puts "You Cant assign him a task He is already working in two task"
#         # break
#       end
#       puts $thor.length
#     end
#     if name1 == "BlackWidow"
#       if $blackwidow.length == 0 || $blackwidow.length == 1
#         $blackwidow.push(mname)
#       elsif $blackwidow.length == 2
#         puts "You Cant assign him a task He is already working in two task"
#         # break
#       end
#       puts $blackwidow.length
#     end
#     if name1 == "IronMan"
#       if $ironman.length == 0 || $ironman.length == 1
#         $ironman.push(mname)
#       elsif $ironman.length == 2
#         puts "You Cant assign him a task He is already working in two task"
#         # break
#       end
#       puts $ironman.length
#     end
#     if name1 == "hawkeye"
#       if $hawkeye.length == 0 || $hawkeye.length == 1
#         $hawkeye.push(mname)
#       elsif $hawkeye.length == 2
#         puts "You Cant assign him a task He is already working in two task"
#         # break
#       end
#       puts $hawkeye.length
#     end
#     first
#   end
# end
# hulk = {:mission_name=>"jhkjkljl", :avenger=>"Hulk"}
# hulk = {:mission_name=>"jkjlm", :avenger=>"Hulk"}
$mission_details = {
  go_get_hulk: {status: "Not Assigned",avg1: "",avg2: ""},
  get_loki: {status: "Not Assigned",avg1: "",avg2: ""},
  get_the_stone: {status: "Not Assigned",avg1: "",avg2: ""},
  find_spiderman: {status: "Not Assigned",avg1: "",avg2: ""},
  find_thanos: {status: "Not Assigned",avg1: "",avg2: ""}
}
# puts $mission_details[:get_loki][:status]
# $mission_details.each do |k,v|
#   puts k
# end
puts $mission_details.keys
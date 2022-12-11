$get_loki = {avg1: "na",avg2: "na"}
$go_get_hulk = {avg1: "na",avg2: "na"}
$get_the_stone = {avg1: "na",avg2: "na"}
$get_spidername = {avg1: "na",avg2: "na"}
$get_thanos = {avg1: "na",avg2: "na"}
$hulk = []
$thor = []
$blackwidow = []
$ironman = []
$hawkeye = []
$captainamerica = []




puts $hulk.length
class Shield
    

    
    def assign 
        puts "Note :- You Can only assign 1 or 2 avengers at a time"
        puts "Please Enter 1 or 2"
        num = gets.chomp.to_i
        if num == 1
            puts "Enter Avenger Name"
            name = gets.chomp
            if name == "Hulk"
                if $hulk.length == 0 || $hulk.length == 1
                   puts "Choose Any Mission"
                   puts "Enter 1:- To select Go and Get Hulk
                   Enter 2:- To select Go and Get Stone
                   Enter 1:- To select Go and Get SpiderMAn
                   Enter 1:- To select Go and Get Thanos
                   Enter 1:- To select Go and Get Loki"
                   number = gets.chomp.to_i
                #    $hulk.push("Mission1")
                   case number
                   when 1 
                    if $go_get_hulk[:avg1] == "na" && $go_get_hulk[:avg2] == "na"
                        $go_get_hulk[:avg1] = name
                        $hulk.push("Mission1")
                        puts $hulk 
                        puts $go_get_hulk
                    elsif $go_get_hulk[:avg1] != "na" && $go_get_hulk[:avg2] == "na"
                        $go_get_hulk[:avg2] = name
                        $hulk.push("Mission1")
                        puts $hulk 
                        puts $go_get_hulk

                    else
                        puts "Two Avengers Are already on this mission"
                    end
                    when 2
                    if $get_the_stone[:avg1] == "na" && $get_the_stone[:avg2] == "na"
                        $get_the_stone[:avg1] = name
                        $hulk.push("Mission1")
                        puts $hulk 
                        puts $get_the_stone
                    elsif $get_the_stone[:avg1] != "na" && $get_the_stone[:avg2] == "na"
                        $get_the_stone[:avg2] = name 
                        $hulk.push("Mission1")
                        puts $hulk 
                        puts $get_the_stone
                    else
                        puts "Two Avengers Are already on this mission"
                    end
                    when 3 
                    if $get_spidername[:avg1] == "na" && $get_spidername[:avg2] == "na"
                        $get_spidername[:avg1] = name
                        $hulk.push("Mission1")
                        puts $hulk 
                        puts $get_spidername
                    elsif $get_spidername[:avg1] != "na" && $get_spidername[:avg2] == "na"
                        $get_spidername[:avg2] = name 
                        $hulk.push("Mission1")
                        puts $hulk 
                        puts $get_spidername
                    else
                        puts "Two Avengers Are already on this mission"
                    end
                    when 4 
                    if $get_thanos[:avg1] == "na" && $get_thanos[:avg2] == "na"
                        $get_thanos[:avg1] = name
                        $hulk.push("Mission1")
                        puts $hulk 
                        puts $get_thanos
                    elsif $get_thanos[:avg1] != "na" && $get_thanos[:avg2] == "na"
                        $get_thanos[:avg2] = name 
                        $hulk.push("Mission1")
                        puts $hulk 
                        puts $get_thanos
                    else
                        puts "Two Avengers Are already on this mission"
                    end
                    when 5
                    if $get_loki[:avg1] == "na" && $get_loki[:avg2] == "na"
                        $get_loki[:avg1] = name
                        $hulk.push("Mission1")
                        puts $hulk
                        puts $get_loki
                    elsif $get_loki[:avg1] != "na" && $get_loki[:avg2] == "na"
                        $get_loki[:avg2] = name 
                        $hulk.push("Mission1")
                        puts $hulk
                        puts $get_loki
                    else
                        puts "Two Avengers Are already on this mission"
                    end
                    end
                else
                    puts "Hulk Is already working on two Missions"
                end
            elsif name == "Thor"
                if $thor.length == 0 || $thor.length == 1
                    puts "Choose Any Mission"
                    puts "Enter 1:- To select Go and Get Hulk
                    Enter 2:- To select Go and Get Stone
                    Enter 1:- To select Go and Get SpiderMAn
                    Enter 1:- To select Go and Get Thanos
                    Enter 1:- To select Go and Get Loki"
                    number = gets.chomp.to_i
                    # $thor.push("Mission1")
                    case number
                    when 1 
                     if $go_get_hulk[:avg1] == "na" && $go_get_hulk[:avg2] == "na"
                         $go_get_hulk[:avg1] = name
                         $thor.push("Mission1")
                     elsif $go_get_hulk[:avg1] != "na" && $go_get_hulk[:avg2] == "na"
                         $go_get_hulk[:avg2] = name 
                         $thor.push("Mission1")
                     else
                         puts "Two Avengers Are already on this mission"
                     end
                     when 2
                     if $get_the_stone[:avg1] == "na" && $get_the_stone[:avg2] == "na"
                         $get_the_stone[:avg1] = name
                         $thor.push("Mission1")
                     elsif $get_the_stone[:avg1] != "na" && $get_the_stone[:avg2] == "na"
                         $get_the_stone[:avg2] = name 
                         $thor.push("Mission1")
                     else
                         puts "Two Avengers Are already on this mission"
                     end
                     when 3 
                     if $get_spidername[:avg1] == "na" && $get_spidername[:avg2] == "na"
                         $get_spidername[:avg1] = name
                         $thor.push("Mission1")
                     elsif $get_spidername[:avg1] != "na" && $get_spidername[:avg2] == "na"
                         $get_spidername[:avg2] = name 
                         $thor.push("Mission1")
                     else
                         puts "Two Avengers Are already on this mission"
                     end
                     when 4 
                     if $get_thanos[:avg1] == "na" && $get_thanos[:avg2] == "na"
                         $get_thanos[:avg1] = name
                         $thor.push("Mission1")
                     elsif $get_thanos[:avg1] != "na" && $get_thanos[:avg2] == "na"
                         $get_thanos[:avg2] = name 
                         $thor.push("Mission1")
                     else
                         puts "Two Avengers Are already on this mission"
                     end
                     when 5
                     if $get_loki[:avg1] == "na" && $get_loki[:avg2] == "na"
                         $get_loki[:avg1] = name
                         $thor.push("Mission1")
                     elsif $get_loki[:avg1] != "na" && $get_loki[:avg2] == "na"
                         $get_loki[:avg2] = name
                         $thor.push("Mission1") 
                     else
                         puts "Two Avengers Are already on this mission"
                     end
                     end
                 else
                     puts "Thor Is already working on two Missions"
                 end
            end
        else
            puts "Wrong Choice"
        end
        first
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
           status
        when 2
           assign
        end
    end
end
obj = Shield.new
obj.first

                


                




                

           







                

            




     

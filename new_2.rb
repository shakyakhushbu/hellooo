require 'byebug'
# assign
puts "Please enter choice of which you want to check details"
puts "Please Choose mthe ission you want to Enter"
puts "Enter 1:- To select Go and Get Hulk
Enter 2:- To select Go and Get Stone
Enter 1:- To select Go and Get SpiderMAn
Enter 1:- To select Go and Get Thanos
Enter 1:- To select Go and Get Loki"
puts "Enter any number"
num1 = gets.chomp
# byebug

if $has.key?(num1)
    if $has[num1]["mission_name1"] == "na" && $has[num1]["mission_name2"] == "na"
        puts "Mission is not assigned to any avenger"
    elsif $has[num1]["mission_name1"] != "na" && $has[num1]["mission_name2"] == "na"
        puts "Aveneger name is = #{$has[num1]["mission_name1"]}"
    else
        puts "Avengers name is = #{$has[num1]["mission_name1"]}"
    end
end


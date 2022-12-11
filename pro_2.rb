require 'byebug'
$array = [
        {"avenger_name" => "Hulk","Person_name" => "Jo bhi hai","mission_completed" => 0,"mission_assigned" => 0,"mission1" => "","mission2" => ""},
        {"avenger_name" => "Thor","Person_name" => "Banel","mission_completed" => 0,"mission_assigned" => 0,"mission1" => "","mission2" => ""},
        {"avenger_name" => "IronMan","Person_name" => "xyz","mission_completed" => 0,"mission_assigned" => 0,"mission1" => "","mission2" => ""},
        {"avenger_name" => "Hawkeye","Person_name" => "Tony Stark","mission_completed" => 0,"mission_assigned" => 0,"mission1" => "","mission2" => ""},
        {"avenger_name" => "BlackWidow","Person_name" => "Natasha","mission_completed" => 0,"mission_assigned" => 0,"mission1" => "","mission2" => ""},
        {"avenger_name" => "CaptainAmerica","Person_name" => "Steve","mission_completed" => 0,"mission_assigned" => 0,"mission1" => "","mission2" => ""}
]
class Shield
  def assign
    puts "Enter Avenger name"
    $name1 = gets.chomp
    $a = $name1.split(",")
    puts $a.length
    puts "Enter Mission name"
    $mname = gets.chomp
    if $a.length == 1
      $array.find do |x|
        if x["avenger_name"] == $name1
          puts "Yes"
          x["mission1"] = $mname
          puts x["mission1"]
        elsif x["avenger_name"] != $name1
          create_avenger
        end
      end
    elsif $a.length == 2
      two_avg($a[0],$a[1])
    end
    
  end
  def status
    $array.each do |x|
      if x["mission_assigned"] == 0
        puts "No Mission Is assign"
      else
        puts "Mission is assigned"
      end
    end
  end

  def first
    puts "Enter number"
    num = gets.chomp.to_i
    case num
      when 1 
        status
      when 2
        assign
    end
  end
  def create_avenger
    puts "#{$name1} is not in our list"
    puts "Please Enter Person_name"
    $p_name = gets.chomp
    $a = {"avenger_name" => $name1,"Person_name" => $p_name,"mission_completed" => 0,"mission_assigned" => 1,"mission1" => $mname,"mission2" => ""}
    $array.push($a)
    puts $array
    first
  end
  def two_avg(avg1,avg2)
    @avg1 = avg1
    @avg2 = avg2
    puts "The name of avengers is #{@avg1} and #{@avg2}"
    byebug
    $array.find do |x|
      byebug
      if x["avenger_name"] == @avg1 || x["avenger_name"] == @avg2
        puts "Yes"
        x["mission1"] = $mname
      elsif x["avenger_name"] != @avg1 || x["avenger_name"] == @avg2
        puts "Hello"
        create_avenger
      elsif x["avenger_name"] == @avg1 || x["avenger_name"] != @avg2
        puts "Hello thsgh"
        create_avenger
      else
        puts 'hii'
      end
    end
  end
end

obj = Shield.new
obj.first
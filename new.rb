class Shield
  def status
    load "./data.rb"

  end 
  def assign 
    puts "Enter the number Of avenger you want to assign task"
    num = gets.chomp.to_i
    case num
    when 1
      puts "Enter Avenger Names"
      name1 = gets.chomp
      puts "Enter Mission Detail"
      mname = gets.chomp
      if name1 == "Hulk"
        # hulk = []
        details = {mission_name: mname,avenger: name1}
      
        f = File.open("data.rb","a+")
        f.syswrite("hulk = #{details}")
      end
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
      status
    when 2 
      assign
    end
  end
end
puts "Enter Your Name"
name = gets.chomp
obj = Shield.new
obj.first

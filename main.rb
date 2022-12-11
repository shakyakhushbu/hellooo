# def status
#     puts "Status is"
# end
# def tho
#     thor = {"mission_assigned" => "mission1","status" => "0","mission_completed" => "0"}
#     thor["mission"]
#     thor["status"]
#     thor["Mission_completed"]
# end


# def hulk
#     hulk = {"mission" => "mission1","status" => "0","mission_completed" => "0"}
#     puts hulk["mission"]
#     puts hulk["status"]
#     puts hulk["mission_completed"]
# end


# def capAme
#     # CapAme = {"mission" => "mission1","status" => "0","mission_completed" => "0"}
# end


# def hawkeye
#     # Hawkeye = {"mission" => "mission1","status" => "0","mission_completed" => "0"}
# end


# def blackWidow
#     # Blackw = {"mission" => "mission1","status" => "0","mission_completed" => "0"}
# end


# def iron
#     # IronMan = {"mission" => "mission1","status" => "0","mission_completed" => "0"}
# end


# def space
#     mission_detail = {}
# end


# def gethulk
# end
# puts "Enter Your Name"
# name = gets.chomp
# if name == "Fury"
#     puts "Welcome To Captain Fury InterFace"
#     puts "Enter 1 To Check the missions
# Enter 2 to Assign mission to Avengers
# Enter 3 to Check mission’s details
# Enter 4 to Check Avenger’s details
# Enter 5 to Update Mission’s status
# Enter 6 to List Avengers
# Enter 7 to Assign avenger to mission"

# num = gets.chomp.to_i
# if num == 1
#     status
# end
# if num == 2
#     a = 2
#     array = Array.new
#     msg = "Enter the elements"
#     puts msg
#     while (a  > 0)
#       array.push(gets.chomp)
#       a  = a  - 1
# end
# puts "Elements of the array are:"
# p array
# puts array[0]
# puts array[1]

# puts "Enter Mission name"
# missionname = gets.chomp

    

# end
# if num == 3
#     puts "Enter mission details"
# end

# if num == 4
#     puts "Enter avenger name"
#     avename = gets.chomp
#     if avename == "Hulk"
#         hulk
#     elsif avename == "Thor"
#         puts tho
#     end
# end

# if num == 5
#     puts "Enter mission name"
# end

# if num == 6
#     puts "List avengers"
# end

# if num == 7
#     puts "Enter Avenger Name"
# end

# else 
#     puts "Wrong enetered"
# end
# require 'byebug'
class Marksheet
    $details = Hash.new
      $total_mx_marks =0
    $total_obt_marks =0
    $total_subjects=0
    @x =Hash.new
  
    def find_student
  
      puts"Enter Student roll Number : "
  
      loop do 
          @roll_no =gets.chomp.to_i
          if (@roll_no<=0)
              print "Please enter the Valid roll number :"
          else
              break
          end
      end
      @b
             
      for key, value in $details
         @x = value
         for keys,values in @x
            if @x["roll_number"]==@roll_no
              @b=@x["roll_number"]
              break
            end
         end
      end  
      
      if  @roll_no == @b
        $total_mx_marks =0
        $total_obt_marks =0
        puts "*******************************REPORT*************************************************************"
        puts "\t\t\tMadhya Pradesh Board of Secondary Education\t\t\t\t"
        puts "\t\t\t\tBatch 2020 - 2021 \t\t\t\t"
        puts "**************************************************************************************************"
        puts "standard : #{$class}\t\t\t Roll no : #{@roll_no}"                                                     
        puts "--------------------------------------------------------------------------------------------------"
        puts "Student name : #{$details[@roll_no]["name"]}"                                            
        puts "Father's name: #{$details[@roll_no]["father_name"]}"                                         
        puts "Mather's name: #{$details[@roll_no]["mother_name"]}"
        puts "=================================================================================================="
        puts "\tsubject\t\t|\tTotal Marks\t|\tObtain Marks\t|\tGrade"
        puts "=================================================================================================="
  
        for i in 0...$total_subjects
          
          $total_obt_marks = $total_obt_marks + $details[@roll_no]["marks"][i]
          $total_mx_marks += $details[@roll_no]["max_marks"][i]
          
          subject_percent = ($details[@roll_no]["marks"][i]*100)/@@subject_mx_mark[i]
          subject_grade = percent_counter(subject_percent)
         
          puts "\t#{@@subject_name[i]}  \t\t|\t#{@@subject_mx_mark[i]} \t\t|\t#{$details[@roll_no]["marks"][i]}\t\t|\t#{subject_grade}\n"
  
        end
        puts"=================================================================================================="
        puts" Total : \t\t#{$total_mx_marks}\t\t\t #{$total_obt_marks}\t "
         
        percent=($total_obt_marks*100)/$total_mx_marks
        percent = percent.round(2)
        puts" Percent:#{percent}"  
  
        total_grade = percent_counter(percent)
        puts" Grade : #{total_grade}   "
        if percent>3
           puts "RESULT : PASS"
        end
                                                                                    
      else
         puts"****************************Roll number not exist********************" 
      end
  
     
      hints
      
    end
  
   def percent_counter(number)
      result = case number
        when 0..32 then "Fail" 
        when 33..40 then "D"    
        when 41..55 then "C"     
        when 56..59 then "B"    
        when 60..80 then "A"     
        when 81..100 then "A+"   
        else "Invalid Score"
        end
      return result
   end
  
    def create_student
      $sname = []
      $fname =[]
      $mname = []
       
      print "Enter the Student  name : "
      $sname = gets.chomp.to_s 
      loop do
        if !$sname.match(/\A[a-zA-Z]+\z/)
          puts "Please enter String type of Student name : "
          $sname = gets.chomp.to_s 
          else 
              break
          end
        end
         
        print "Enter Your Father name : "
        $fname = gets.chomp.to_s
        loop do
          if !$fname.match(/\A[a-zA-Z]+\z/)
            puts "enter string type of f name :"
            $fname = gets.chomp.to_s 
          else 
                 break
          end
        end
        
        print "Enter Your Mother name : "
        $mname = gets.chomp.to_s
        loop do
          if !$mname.match(/\A[a-zA-Z]+\z/)
            puts "enter string type of m name :"
            $mname = gets.chomp.to_s
          else 
            break
          end
        end
         
  
        puts "Enter roll no: "
        loop do 
          $rno =gets.chomp.to_i
         break if ($rno > 0)
          print "Please enter the Valid roll number :"
          
      
      end
        if $details.key?($rno)
           puts "This Roll no. Already Exit "
           $rno =gets.chomp.to_i
        end
                
      set_marks
  
        $student_hash = {
        "roll_number" =>  $rno,
        "name"    =>  $sname, 
        "father_name"  =>  $fname, 
          "mother_name"  =>  $mname,
        "marks"   => @@obtain_marks,
        "max_marks" => @@subject_mx_mark
      } 
          
  $details[$rno] = $student_hash
  
    hints
    end
    
  
    def set_marks
    @@obtain_marks = []
        for i in 0...$total_subjects
            puts "Enter The obtain marks of #{@@subject_name[i]}"
            @@obtain_marks[i] = gets.chomp.to_i
            loop do
  
                if (@@obtain_marks[i] >= @@subject_mx_mark[i])
                    puts  "make sure obtain_marks less then total marks Enter the valid mark :"
                    @@obtain_marks[i] = gets.chomp.to_i
                elsif (@@obtain_marks[i] < 0)
                    puts  "negative not allowed please Enter the valid mark :"
                    @@obtain_marks[i] = gets.chomp.to_i
                else
                   break
                end
            end
        end
    end 
  
    def shows
  
      if ($details.empty?)
        puts"**************Students are not available ******************"	
  else
    puts"         \t\tALL STUDENTS                                   "
  puts"---------------------------------------------------------------------------------------"
  puts"\t\t\tROLL\t||\tSTUDENT NAME\t"
  puts "-----------------------------------------------------------------------------------"
     $details.each do |key , val|
      puts"\t\t\t#{key}\t||\t\t#{val["name"]}" 
     end
     puts "--------------------------------------------------------------------------------------"
  end
                  
    hints
  
    end
  
    def first
    puts "Enter the standard"
      loop do
      $class = gets.chomp.to_i
          if ($class <= 0)
               puts "Please enter the valid standard : "
            elsif ($class > 12)
                puts "Please enter the valid standard : "
          else
               break
          end
        end
        
        puts"How many number of Subjects : "
      loop do
      $total_subjects = gets.chomp.to_i
            if ($total_subjects <= 10)
                if($total_subjects == 0)
                    print "Please enter Valid total no. of subject : "
                else
                    break
                end
            end
        end
  
        @@subject_name = []
        @@subject_mx_mark = []
      @@obtain_marks =[]
    
   for i in 0...$total_subjects
      puts "Enter Name of Subject  #{i+1}"
      @@subject_name[i] = gets.chomp.to_s
        loop do
           if !(@@subject_name[i].match(/\A[a-zA-Z]+\z/))
            puts "Subject Name must be string\n Please Enter valid Subject name: "
              @@subject_name[i]= gets.chomp.to_s
         else
              break
           end
        end
  
        puts "Enter maximum marks of #{@@subject_name[i]}"
      @@subject_mx_mark[i] = gets.chomp.to_i
      loop do
         if !((@@subject_mx_mark[i] > 0) && (@@subject_mx_mark[i] <=100))
             puts "Wrong marks Please Enter Valid Marks : "
             @@subject_mx_mark[i] =gets.chomp.to_i
         else
               $total_mx_marks= $total_mx_marks + @@subject_mx_mark[i]
              break
         end
      end
                  
     end  
    end    
           
      
  
  
   def hints
        puts "1. Create new Student"
        puts "2. Find Student"
        puts "3. show All Student"
        puts "4. Exit"
       
       print "Please Enter your choice : "
       choice = gets.chomp.to_i
       case choice
           when 1
                 create_student
           when 2
                 find_student
           when 3 
                 shows
           when 4
                 exit            
           else 
             puts "invalid"
  
        end
    end
   
  end
  
  
  m=Marksheet.new
  m.first
  m.hints
  
  
  
  
  
  
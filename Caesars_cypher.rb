def solve_cipher(input, shift)
  
	alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  
  	if (input.index(/\d/) == nil) 

    	if (input.index(/\s/) != nil )

       		arrletters = input.split(" ").map {|x| x.split("")}
      		arrAscii = arrletters.map {|x| x.map {|y| y.ord - 97}}
      		arrFinal = arrAscii.map {|x| x.map {|y|  alphabet[y+shift]}}
      		arrOut = arrFinal.map {|x| x.join("")}
        	return arrOut.join(" ")

    	else 
	        arrNum = input.split("").map {|x| x.ord - 97}
        	arrFinal = arrNum.map {|x| alphabet[x+shift]}
        	return arrFinal.join("")        
    	end
      
 	else
    
    puts "Please, no digits allowed"

    end

end

solve_cipher("ifmmp ifmmp",-1)











=begin

def solve_cipher(input, shift)
  
  alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  
  input2 = input.split("")
  input3 = input2.map {|x| x.ord - 97 }
  input4 = input3.map {|y| y + shift}
  input5 = input4.map {|z| puts alphabet[z]}

    

end

solve_cipher("ifmmp",-1)
# should return "hello"

=end
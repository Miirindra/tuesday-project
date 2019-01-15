=begin
	
def caesar_cipher(string, shift)
  alphabet  = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  encrypter = non_caps.merge(caps)
  
  string.chars.map { |c| encrypter.fetch(c, c) }
end
puts caesar_cipher("What a STring", 5).join

=end

def caesar_cipher
	puts 'Please enter your string to be coded'
	print "> "
    string = gets.chomp.split("")
    
	puts 'Please enter your number key'
	print "> "
    key = gets.chomp.to_i
    

    if (key > 26) 
      key = key % 26
    end

    string.map! do |i|
      i.ord
    end

    string.map! {|i| i = i + key}.map! {|i| 
      if (i > 122)
        then i = i - 26
      elsif (i > 90 && i < 97) #90 < i
        then i = i - 26
      elsif (i > 96 && (i - key) < 91 && (i - key) > 64)
        then i = i - 26
      elsif (i < 65 )
        then i = 32
      else
        i
      end
    }

    string.map! do |i|
      i.chr 
    end

	puts "Your coded word is: #{string.join("")}"
	puts 'Return back to original string? (Yes or No)'
  response = gets.chomp.downcase

    if response == 'yes'
      string.to_s.split("")
      string.map! do |i|
        i.ord
    end

    string.map! {|i| i - key}.map! {|i| 
      if (90 < i && i < 97)
      	then i = i + 26
      elsif ((i+key) > 96 && i < 91 && i > 64)
        then i = i + 26
      elsif (i < 65 && (i+key) < 91 && (i + key) > 64)
        then i = i + 26
      elsif (i < 65)
         then i = 32
      else
          i
   		end
    }

    string.map! do |i|
      i.chr
    end

    puts string.join("")
	end
end

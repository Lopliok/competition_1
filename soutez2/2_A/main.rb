require "byebug"


pole = []




File.open(ARGV[0], "r") do |f|
  f.each_line do |line|

    ind = line.strip.split(';')

    #p ind[0]

    lektvary = {}

    ind[0].each_char.with_index do |char, index|




      #if char != ind[1][index]

        lektvary[char] = ind[1][index] unless lektvary[char]





        #debugger



        #puts "ano"

      #end


    end

    lektvary.sort

    #debugger

    pole << lektvary.sort unless lektvary.empty?



  end
end





File.open(ARGV[1], "w") do |f|

  pole.each do |prvek|

    i = 0

    prvek.each do |indeg|


      f.print "," if i != 0
      f.print indeg[0] + ">" + indeg[1]
      i += 1

    end

    f.puts ""


  end



end





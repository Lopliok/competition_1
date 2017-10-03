require "byebug"


#pole = []

policko = []

policko2 = []


File.open(ARGV[0], "r") do |f|
  f.each_line do |line|

    ind = line.strip.split(/[;,:x ]/)

    #debugger

    pozemek = [ind[0].to_i, ind[1].to_i, ind[2].to_i, ind[3].to_i]

    bugek = [ind[4].to_i, ind[5].to_i, ind[6].to_i, ind[7].to_i]

    debugger

    #p pozemek

    #p bugek

    policko = []

    policko2 = []




    if bugek[0].between?(pozemek[0], pozemek[2]) && bugek[1].between?(pozemek[1], pozemek[3])




      if  bugek[2].between?(pozemek[0], pozemek[2]) && bugek[3].between?(pozemek[1], pozemek[3])

        pocet = 0
        delka = []



        stanekx = (pozemek[0]..pozemek[2]).to_a


        staneky = (pozemek[1]..pozemek[3]).to_a


        bugekx = (bugek[0]..bugek[2]).to_a

        bugeky = (bugek[1]..bugek[3]).to_a


        stanekx.each do |prvek|

          staneky.each do |prvecek|

            policko << (prvek.to_s + "x" + prvecek.to_s) #unless policko.include?(prvek.to_s + "x" + prvecek.to_s)


          end


        end

        bugekx.each do |prvek|

          bugeky.each do |prvecek|

            policko2 << (prvek.to_s + "x" + prvecek.to_s) unless policko.include?(prvek.to_s + "x" + prvecek.to_s)


          end


        end


        #debugger



        delka = policko & policko2


        puts delka.length


      end


    end


  end


end






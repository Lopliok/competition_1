require 'byebug'


pole = []
pocitadlo = 0

konec = []



File.open(ARGV[0], "r") do |f|
  f.each_line do |line|

    pole << line.strip


  end


end


pole.each do |radek|


prepinac = "0"

pocitadlo = 0



  radek.each_char.with_index do |cislice, key|


    next if cislice == radek[key+1] || (key == radek.length - 1 && cislice == "1")

    pocitadlo += 1



  end




    print pocitadlo

    konec << pocitadlo



end



File.open(ARGV[1], "w") do |f|

  konec.each do |prvek|

    f.puts prvek

  end


end



p pole






=begin


    break if (key.to_i == radek.length - 1 && cislice == "1")

    next if cislice == radek[key + 1]

    if cislice == "0"

      #debugger


      next if prepinac == "0"


      prepinac = cislice


      pocitadlo += 1

      #debugger

    elsif cislice == "1"


      next if prepinac == "1"


      prepinac = cislice

      pocitadlo += 1



=end






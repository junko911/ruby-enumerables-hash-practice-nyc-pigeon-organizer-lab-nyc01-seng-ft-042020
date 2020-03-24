require 'pp'

def nyc_pigeon_organizer(data)
  attribute = {}
  
  pp data.length
  # index = 0
  # while index < data.length 
  
  # data.each do |key1, value1|
  #   pp key1
    
  #   # do |key2, value2|
  #   #   attribute[value2.join()] = {key1 => key2.to_s}
  #   # end
  end
  
  
  # pp attribute
end


pigeon_data = {
  :color => {
    :brown => ["Luca"],
    :black => ["Lola"],
  },
  :gender => {
    :male => ["Luca"],
    :female => ["Lola"]
  },
  :lives => {
    "Central Park" => ["Lola"],
    "Library" => ["Luca"]
  }
}
nyc_pigeon_organizer(pigeon_data)

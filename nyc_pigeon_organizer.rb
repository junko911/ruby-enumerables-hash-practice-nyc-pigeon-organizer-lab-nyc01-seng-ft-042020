require 'pp'

def nyc_pigeon_organizer(data)
  attribute = {}
  
  index = 0
  while index < data.length do
    key = data.keys[index]
    do |key2, value2|
    
    index += 1
  end

      attribute[value2.join()] = {key1 => key2.to_s}
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

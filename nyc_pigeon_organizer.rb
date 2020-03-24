require 'pp'

def nyc_pigeon_organizer(data)
  # attribute = {}
  
  index = 0
  pigeon_list = {}
  while index < data.length do
    category = data.keys[index]

    data[category].each do |key, value|
      
      pigeon_list[value]
      [value.join()] = { category => key.to_s }
      # pp memo
      memo
    end
    
    index += 1
  end

  pp pigeon_list
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

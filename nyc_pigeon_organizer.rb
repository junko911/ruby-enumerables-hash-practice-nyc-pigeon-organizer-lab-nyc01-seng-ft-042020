require 'pp'

def nyc_pigeon_organizer(data)
  # attribute = {}
  
  index = 0
  while index < data.length do
    category = data.keys[index]

    pigeon_list = data[category].reduce({}) do |memo, (key, value)|
      
      
      memo[value.join()] = { category => key.to_s }
      memo
    end
    
    index += 1
  end

  pigeon_list
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
pp nyc_pigeon_organizer(pigeon_data)

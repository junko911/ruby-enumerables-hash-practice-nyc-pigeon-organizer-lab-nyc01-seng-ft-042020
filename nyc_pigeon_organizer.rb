require 'pp'

def nyc_pigeon_organizer(data)
  # attribute = {}
  
  index = 0
  while index < data.length do
    category = data.keys[index]

    data[category].reduce({}) do |memo (key, value)|
      memo[value.join()] = {category => key.to_s}
      pp memo
    end
    
    index += 1
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

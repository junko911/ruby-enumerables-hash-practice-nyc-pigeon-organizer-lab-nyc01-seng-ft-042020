require 'pp'

def nyc_pigeon_organizer(data)
  attribute = {}
  
  data.each_key do
    data.keys[index].each do |key, value|
      attribute[value.join()] = {data.keys[index] => key.to_s}
    end
  end
  
  
  pp attribute
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

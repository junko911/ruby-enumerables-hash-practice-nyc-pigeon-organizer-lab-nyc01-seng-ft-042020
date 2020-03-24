require 'pp'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons = {}
  data.reduce("first") do |memo, (key, value)|
  pigeons[key] = value
  end
  pp pigeons
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

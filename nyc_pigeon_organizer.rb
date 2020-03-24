require 'pp'

def nyc_pigeon_organizer(data)
  # write your code here!
  # pigeons = {}
  # name = []
  # data.reduce() do |memo, (key, value)|
  #   name << value
  # end
  pp data.invert
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

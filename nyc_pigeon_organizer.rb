require 'pp'

def nyc_pigeon_organizer(data)
  
  index = 0
  pigeon_list = {}
  while index < data.length do
    category = data.keys[index]

    data[category].each do |key, value|
      
      inner_index = 0
      while inner_index < value.length do
        
        if pigeon_list[value[inner_index]].nil?
          pigeon_list[value[inner_index]] = { category => key.to_s }
        else
          pigeon_list[value[inner_index][category] = key.to_s
        end
        
        inner_index += 1
      end
        
    end
    
    index += 1
  end

  pigeon_list
end

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }

# pigeon_data = {
#   :color => {
#     :brown => ["Luca"],
#     :black => ["Lola"],
#   },
#   :gender => {
#     :male => ["Luca"],
#     :female => ["Lola"]
#   },
#   :lives => {
#     "Central Park" => ["Lola"],
#     "Library" => ["Luca"]
#   }
# }
# nyc_pigeon_organizer(pigeon_data)

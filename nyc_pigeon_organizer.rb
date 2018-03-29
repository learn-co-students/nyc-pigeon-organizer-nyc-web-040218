require "pry"
def nyc_pigeon_organizer(data)
  output = {}
  #pigeon_data = {
  #  :color => {
  #   :purple => ["Theo", "Peter Jr.", "Lucky"],
  #   :grey => ["Theo", "Peter Jr.", "Ms. K"],
  #   :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
  #   :brown => ["Queenie", "Alex"]
  #  },
  #  :gender => {
  #    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
  #    :female => ["Queenie", "Ms. K"]
  #  },
  #   :lives => {
  #    "Subway" => ["Theo", "Queenie"],
  #    "Central Park" => ["Alex", "Ms. K", "Lucky"],
  #    "Library" => ["Peter Jr."],
  #    "City Hall" => ["Andrew"]
  #  }
  # }
  data.each do |attribute, data_hash|
    data_hash.each do |key, array|
      array.each do |pigeon_name|
        #binding.pry
        if output[pigeon_name] == nil
          output[pigeon_name] = {attribute => []}
          output[pigeon_name][attribute] << key.to_s
        elsif output[pigeon_name][attribute] == nil
          output[pigeon_name][attribute] = []
          output[pigeon_name][attribute] << key.to_s
        else
          output[pigeon_name][attribute] << key.to_s
        end
      end
    end
  end
  return output
end

require "pry"
def nyc_pigeon_organizer(data)
  output = {}

  data.each do |attribute, data_hash|
    data_hash.each do |key, array|
      array.each do |pigeon_name|
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

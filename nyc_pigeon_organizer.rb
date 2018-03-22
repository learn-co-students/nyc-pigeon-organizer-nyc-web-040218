def nyc_pigeon_organizer(data)
  
  output_hash = {}
  
  data.map do | attribute, detail_hash |
    detail_hash.map do | detail, name_array |
      name_array.map do | name |
        this_detail = {name => {attribute => []}}
        output_hash = output_hash.merge!(this_detail) {|key, output, this| output.merge(this) }
      end
    end
  end
  
  data.map do | attribute, detail_hash |
    detail_hash.map do | detail, name_array |
      name_array.map do | name |
        output_hash[name][attribute].push(detail.to_s)
      end
    end
  end
  
  output_hash
end

# def nyc_pigeon_organizer(data)
#   data.each_with_object({}) do | (attribute, detail_hash), output_hash |
#     detail_hash.each do | detail, name_array |
#       name_array.each do | name |
#         output_hash[name] ||= {}
#         output_hash[name][attribute] ||= []
#         output_hash[name][attribute] << detail.to_s
#       end
#     end
#   end
# end


#def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  #pigeon_list = {}
 #ks = pigeon_data.keys
#names = pigeon_data[ks[0].values.flatten]
#i = 0
#while ks.length > i
#names.each { |e| e = Hash.new pigeon_list.update(e[names[i]]) }
#i ++
#end
#pigeon_list
#end

def nyc_pigeon_organizer(pigeon_data)
pigeon_list = {}
pigeon_data.each do |k, v|
    v.each do |k2, v2|
      v2.each do |e|
        pigeon_list[e] ||= {} #default empty hash
        pigeon_list[e][k] ||= [] #default empty array
        pigeon_list[e][k] << k2.to_s
      end
    end
  end
  pigeon_list
end

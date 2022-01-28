#! /usr/bin/env ruby

file = File.read("npcs.txt")
file_npcs = file.split("\n\n")
puts "File count: " + file_npcs.count.to_s

0.upto(file_npcs.count-1) do |i|
npc_split = file_npcs[i].split("\n")

name = npc_split[0].split.map(&:capitalize).join(' ')
puts name

description = npc_split[1]
puts description

type = file_npcs[i].split("Type: ")[1].split(" (")[0]
puts type

traits = file_npcs[i].split("Attributes: ")[1].split("\n")[0]
######
# animal intelligence
######
puts traits

skills = file_npcs[i].split("Skills: ")[1].split("\n")[0]
puts skills 

pace = file_npcs[i].split("Pace: ")[1].split("; Parry: ")[0]
parry = file_npcs[i].split("Parry: ")[1].split("; Toughness: ")[0]
toughness = file_npcs[i].split("Toughness: ")[1].split("\n")[0]
puts "Pace: " + pace.to_s + ", Parry: " + parry.to_s + ", Toughness: " + toughness.to_s

# if file_npcs[i] =~ /Edges: /
#    edges = file_npcs[i].split("Edges: ")[1].split("\n")[0]
#    puts edges
# end

# if file_npcs[i] =~ /^Gear: /
#    gear = file_npcs[i].split("Gear: ")[1].split("\n")[0]
#    puts "Gear-- " + gear
# end

# if file_npcs[i] =~ /^Powers: /
#    powers = file_npcs[i].split("\nPowers: ")[1].split("\n")[0]
#    puts powers
# end

# if file_npcs[i] =~ /Special Abilities:/
#    special_abilities = file_npcs[i].split("Special Abilities:")[1].split("\n")[0]
#    puts special_abilities
# end

# if file_npcs[i] =~ /^Languages: /
#    languages = file_npcs[i].split("Languages: ")[1].split("\n")[0]
#    puts languages
# end

#source = "Pathfinder Bestiary"
#source_page = ""
#image = "pathfinder_bestiary_" + name.downcase.gsub(' ', '_') + ".png"
#puts image

#save
end
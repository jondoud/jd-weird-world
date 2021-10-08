#! /usr/bin/env ruby

require 'active_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection( 
  :adapter  => 'sqlite3', 
  :database => '/Users/jdoud/dev/savageworlds/database/savageworlds.sqlite3'
) 

class Race < ActiveRecord::Base
end

db_races = Race.order(name: :asc)
puts "DB count: " + db_races.count.to_s

file = File.new("races-weirdworld.csv", "w")
file.puts "Name,Description,Image,Source"

db_races.each do |r|
  if r.source =~ /Gyre/

    n = '"' + r.name + '",'
    d = r.description + "</p><p> " + r.abilities
    d.gsub!(/\n/, "")
    d.gsub!(/"/, '""')
    d = '"' + d + '",'
    
    if r.image.blank?
      i = ","
    else
      i = 'modules/jd-weird-world/images/races/' + r.image + ','
    end
    s = r.source
    if !r.source_page.blank? 
      s = s + " page " + r.source_page.to_s
    end
    puts s
    file.puts n + d + i + s
  end
end

file.close

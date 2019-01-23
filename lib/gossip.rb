#! /usr/bin/env ruby
##****************************************************************************
# RUBY - Gossip
#****************************************************************************
#   Ruby's Program - Gossip
#   Written by: Guillaume CHRISTE
# 	Date: Date of modification
#   
#   Description:
# 		- 
# 		- 
# 		
# 	Gems:
		require 'bundler'
		Bundler.require
#
#****************************************************************************
class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    csv = File.open("./db/gossip.csv","a+")
    csv.puts("#{@author},#{@content}")
	csv.close
  end

  def self.index_gossips
  	allgossips =[]
  	csv = File.open("./db/gossip.csv","a+")
	CSV.foreach(csv, headers: false) do |row|
	  allgossips << Gossip.new(row[0],row[1])
	end
	csv.close
	return allgossips
  end

  def self.delete_gossips(array) 
	csv = File.open("./db/gossip.csv","w")
 	array.each do |_array|
	  csv.puts("#{_array.author},#{_array.content}")
    end
	csv.close
  end
end
# End of Gossip ..............................................................
#.............................................................................
#.............................................................................
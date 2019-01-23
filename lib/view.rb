#! /usr/bin/env ruby
##****************************************************************************
# RUBY - @NameOfTheProgram
#****************************************************************************
#   Ruby's Program - Name of the program
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
class View
  def initialize

  end
	
  def create_gossip
    print "          Enter your name > "
    author = gets.chomp.to_s
    print "          Enter your gossip > "
    gossip = gets.chomp.to_s
    return {Author: author, Gossip: gossip}.to_h
  end

  def self.index_gossips(gossips)
  	gossips.each_with_index do |gossip,index|
  	  puts "\n          Gossip n°#{index + 1}:"
  	  puts "               #{gossip.content}"
  	  puts "                              - #{gossip.author}\n"
  	  puts ""
  	end
  end

  def self.delete_gossips(gossips)
  	to_keep = []
  	gossips.each_with_index do |gossip|
  	  puts "          Do you wants to delete the below gossip?"
  	  puts "               #{gossip.content} by #{gossip.author}"
  	  print "               Select Y/N > "
  	  user_choice = gets.chomp
  	  if user_choice.upcase == "Y"
  	  	puts "               The gossip is removed\n"
  	  else 
  	  	to_keep << gossip
  	  	puts "               Gossip kept\n"
  	  end
  	end
  	return to_keep
  end
end

# End of Program's name
#.............................................................................
#.............................................................................
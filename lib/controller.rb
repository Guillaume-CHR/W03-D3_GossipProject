#! /usr/bin/env ruby
##****************************************************************************
# RUBY - Controller
#****************************************************************************
#   Ruby's Program - Controller
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
require '/home/gui/Documents/Coding/THP/W03-D3_GossipProject/lib/gossip'
require '/home/gui/Documents/Coding/THP/W03-D3_GossipProject/lib/view'

class Controller

  def initialize()
    @view = View.new

  end

  def create_gossip
    params = @view.create_gossip
    #params[:author] eq params.fetch(:author)
    gossip = Gossip.new(params[:Author],params[:Gossip]) 
    gossip.save
  end

  def index_gossips
  	gossips = Gossip.index_gossips
  	View.index_gossips(gossips)
  end

  def delete_gossips
  	gossips = Gossip.index_gossips
  	to_keep = View.delete_gossips(gossips)
  	Gossip.delete_gossips(to_keep)
  end
end

# End of Controller ..........................................................
#.............................................................................
#.............................................................................
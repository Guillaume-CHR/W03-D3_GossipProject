#! /usr/bin/env ruby
##****************************************************************************
# RUBY - Router
#****************************************************************************
#   Ruby's Program - Router
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
require '/home/gui/Documents/Coding/THP/W03-D3_GossipProject/lib/controller'

class Router
  def initialize
    @controller =  Controller.new
  end #ainsi, un "Router.new" lancé par app.rb va créer automatique une instance "@controller"

  def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.
    puts "\n**************************************************************"
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
    while true

      #on affiche le menu
      puts "**************************************************************"
      puts "Hey handsome, what would you like to do?"
      puts "  1. Create a gossip"
      puts "  2. Display all gossips"
      puts "  3. Delete one gossip"
      puts "  4. Quit"
      puts "**************************************************************"
      print "Enter your choice here: "
      params = gets.chomp.to_i #on attend le choix de l'utilisateur
      puts ""

      case params #en fonction du choix
      when 1
        puts "     You've chosen to create a grossip" 
        @controller.create_gossip
        puts "     Congrats - Your gossip has been created"
        puts ""
      when 2
        puts "     You've chosen to display all gossips"
        puts "     Here they are:"
        @controller.index_gossips
        puts ""
      when 3
        puts "     You've chosen to delete one gossip"
        @controller.delete_gossips
        puts "     Congrats - Everything has been taken into account"
        puts ""
      when 4
        puts "     CU baby"
        puts ""
        break #ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
      else
        puts "     Not a choice, try again" #si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
        puts ""
      end
    end
  end
end
# End of Router ..............................................................
#.............................................................................
#.............................................................................
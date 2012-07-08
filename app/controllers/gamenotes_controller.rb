class GamenotesController < ApplicationController
  active_scaffold :gamenote do |conf|
  	  config.label = "GamenotesLabel"
  	  columns[:gamenote].label = "Notes"
  end
end 


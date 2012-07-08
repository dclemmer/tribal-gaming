class GamesController < ApplicationController
  before_filter :authenticate_user!
  @user = User.where(:approved => 1).first
layout 'nosidebar'
  #def index
    #render :template => 'layouts/nosidebar', :layout => false
    active_scaffold :games do |conf|
      config.label = "Tribal Games"
      #config.columns = [:game, :gamelink, :gametype, :notes, :owner, :players, :plays, :playtime, :setting]
      #bgg_num game gamelink gametype imagelocation notes owner players plays playtime publisher setting  
      list.columns.exclude :imagelocation
      list.columns.exclude :bgg_num
      list.columns.exclude :publisher
      list.columns.exclude :notes
      #list.columns.exclude :gamenotes
    
      list.sorting = {:name => 'ASC'}
      columns[:gamelink].label = "Link"
      columns[:gametype].label = "Type"
      columns[:players].label = "# of Players"
      columns[:plays].label = "# of Plays"
      columns[:playtime].label = "Time to Play"
      #columns[:gamenote].label = "GAMENOTES_LABEL"
      columns[:gamenote].description = "GAMENOTES_LABEL"
      #columns[:phone].description = "(Format: ###-###-####)"
    
      #config.nested.add_link(:gamenote)
      #config.nested.add_link(:gamenote, :label => "Game Notes", :page => true)
    end
  #end
end 

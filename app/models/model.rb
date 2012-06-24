class Model < ActiveRecord::Base
  attr_accessible :bgg_num, :game, :gamelink, :gametype, :id, :imagelocation, :notes, :owner, :players, :plays, :playtime, :publisher, :setting
end

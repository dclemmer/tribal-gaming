class Games < ActiveRecord::Base
  attr_accessible :bgg_num, :game, :gamelink, :gametype, :id, :imagelocation, :notes, :owner, :players, :plays, :playtime, :publisher, :setting
  has_many :gamenote
end

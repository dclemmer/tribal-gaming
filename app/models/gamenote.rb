class Gamenote < ActiveRecord::Base
  belongs_to :games
  def to_label
    #"Note"
    "#{gamenote}"[0,15] + "..."
  end
end

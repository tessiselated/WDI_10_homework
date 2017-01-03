class Video < ActiveRecord::Base

  def print_values
    "#{self.title} - #{self.genre}"
  end
end

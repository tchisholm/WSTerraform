class Game < ActiveRecord::Base

  has_many :players
  has_many :users, :through => :players

  validates_presence_of :name
  validates_uniqueness_of :name
end

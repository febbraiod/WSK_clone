class Category < ActiveRecord::Base

  has_many :stocks

  validates_presence_of :title
  validates_presence_of :volatility_index

end

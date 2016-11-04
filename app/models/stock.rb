class Stock < ActiveRecord::Base

  belongs_to :category
  validates :account, :presence => true

end

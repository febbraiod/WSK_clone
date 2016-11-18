class Player < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :bank_account

end

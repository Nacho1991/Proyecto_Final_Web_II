class Product < ActiveRecord::Base

  #Validate attributes
  validates :name, presence: true
  validates :state, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true

end

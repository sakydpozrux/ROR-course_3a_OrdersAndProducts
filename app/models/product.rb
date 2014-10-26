class Product < ActiveRecord::Base
  has_many :order_lines
  has_many :orders, through: :order_lines

  validates :name,  presence: true
  validates :price, numericality: { greater_than: 0 }
end

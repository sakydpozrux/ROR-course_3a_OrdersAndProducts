class Order < ActiveRecord::Base
  has_many :order_lines
  has_many :products, through: :order_lines

  validates :recipients_name,  presence: true
  validates :shipping_address, presence: true
end

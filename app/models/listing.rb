class Listing < ApplicationRecord
  has_one_attached :image
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  validates :name, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  #validates_attachment_presence :image
  belongs_to :user
  has_many :orders
  has_one :address, dependent: :destroy
end

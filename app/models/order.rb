class Order < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_one :address, dependent: :destroy
end

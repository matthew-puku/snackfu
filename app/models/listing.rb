class Listing < ApplicationRecord
    has_one_attached :image
    # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

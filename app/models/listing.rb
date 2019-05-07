class Listing < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    def can_change?(user)
        self.user == user || user.has_role?(:admin)

    end
end

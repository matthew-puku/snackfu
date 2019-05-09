class Address < ApplicationRecord
  belongs_to :listing, optional: true
  belongs_to :order, optional: true
  belongs_to :user, optional: true
  
  validate :only_one_owner

  private

  def only_one_owner
    owners = 0
    owners += 1 if listing.present?
    owners += 1 if order.present?
    owners += 1 if user.present?

    if owners != 1
      errors.add(:base, "can only have one owner")
    end
  end
end

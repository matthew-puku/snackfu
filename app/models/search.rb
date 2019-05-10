class Search < ApplicationRecord
    def products
        @products ||= find_products
    end
    private

    def find_products
        products= Product.order(:name)
        products= product.where("name like ?", "%#{keywords}%") if keywords.present?
        products = products.where(catagory_id: catagory_id) if catagory_id.present?
        products = products.where("price >= ?", min_price) if min_price.present?
        products = products.where("price <= ?", max_price) if max_price.present?
        products
        
    end

end

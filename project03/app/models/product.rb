class Product < ActiveRecord::Base
	has_many :line_items
	
	before_destroy :ensure_not_referenced_by_any_line_item
	
	private
	
	#make sure no line items reference this product
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end
#end
validates :title, :description, :img_url, presence: true
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :title, uniqueness: true
validates :img_url, allow_blank: true, format: {
	with: %r{\.(gif|jpg|png)$}i,
	message: 'must be a URL for GIF, JPG, or PNG image'
}
end

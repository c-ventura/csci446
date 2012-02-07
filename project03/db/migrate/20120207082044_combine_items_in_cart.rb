class CombineItemsInCart < ActiveRecord::Migration
  def up
  #replace mult items in cart for one product in a cart with 1 item
  Cart.all.each do |cart|
	#count number of each product
	sums = cart.line_items.group(:product_id).sum(:quantity)
	
		sums.each do |product_id, quantity|
			if quantity > 1
				#remove individual items
				cart.line_items.where(product_id: product_id).delete_all
				
				#replace with one item
				cart.line_items.create(product_id: product_id, quantity: quantity)
			end
		end
	end
  end

  def down
	#split items with quant>1 to mult items
	LineItem.where("quantity>1").each do |line_item|
		#add individ items
		line_item.quantity.times do
			LineItem.create card_id: line_item.card_id,
				product_id: line_item.product_id, quantity: 1
		end
		
		#remove original item
		line_item.destroy
	end
  end
end

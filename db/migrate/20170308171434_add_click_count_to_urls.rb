class AddClickCountToUrls < ActiveRecord::Migration
	def change
		 add_column :urls, :clickcount, :integer
	end
end

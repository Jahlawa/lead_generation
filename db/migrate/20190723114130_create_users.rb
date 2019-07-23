class CreateUsers < ActiveRecord::Migration[5.2]
	def change
		create_table :users do |t|
			t.string :name
			t.string :first_name
			t.string :adress
			t.integer :zipcode
			t.string :city
			t.integer :phone
			t.string :mail 
			t.belongs_to :question, index: true

			t.timestamps
		end
	end
end

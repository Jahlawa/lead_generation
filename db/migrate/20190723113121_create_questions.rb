class CreateQuestions < ActiveRecord::Migration[5.2]
	def change
		create_table :questions do |t|
			t.string :house
			t.string :type
			t.string :heating
			t.string :bill
			t.string :income
			t.string :status
			t.belongs_to :user, index: true

			t.timestamps
		end
	end
end

class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.text :commment

      t.timestamps
    end
  end
end

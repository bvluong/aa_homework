class AddToIndexPeople < ActiveRecord::Migration[5.0]
  def change
    add_index :people, :name
  end
end

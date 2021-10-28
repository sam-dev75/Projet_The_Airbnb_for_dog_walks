class AddIndexToDog < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogsitters, :dogs, foreign_key: true
  end
end

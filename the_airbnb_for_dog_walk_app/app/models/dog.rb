class Dog < ApplicationRecord

  def change
    create_table :Dog do |t|
      t.string :name
      t.string :Dogbreed
      t.integer :age
      t.belongs_to :user, index: true

      t.timestamps
    end
  end

end

class Dog < ApplicationRecord
  has_many :dogsitter
end

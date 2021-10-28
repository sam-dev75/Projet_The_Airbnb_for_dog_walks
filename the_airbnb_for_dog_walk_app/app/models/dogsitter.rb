class Dogsitter < ApplicationRecord
  def change
    create_table :Dogsitter do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.belongs_to :user, index: true
      t.timestamps
    end
  end

end
class Dogsitter < ApplicationRecord
  has_many :dogs
end

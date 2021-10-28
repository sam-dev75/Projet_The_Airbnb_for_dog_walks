class City < ApplicationRecord
  def change
    create_table :Dog do |t|
      t.string :cityname

      t.timestamps
    end
  end
end

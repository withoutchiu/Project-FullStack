class CreatePrimaryAttributes < ActiveRecord::Migration[6.0]
  def change
    create_table :primary_attributes do |t|
      t.string :name

      t.timestamps
    end
  end
end

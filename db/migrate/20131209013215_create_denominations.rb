class CreateDenominations < ActiveRecord::Migration
  def change
    create_table :denominations do |t|
      t.string :symbol
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end

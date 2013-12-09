class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :date
      t.float :amount
      t.float :paid

      t.timestamps
    end
  end
end

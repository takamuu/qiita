class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :product_name
      t.integer :contract_money
      t.integer :contract_status

      t.timestamps
    end
  end
end

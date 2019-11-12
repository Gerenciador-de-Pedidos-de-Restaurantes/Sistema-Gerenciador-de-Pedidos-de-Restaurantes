class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :menuTitle
      t.string :street
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end

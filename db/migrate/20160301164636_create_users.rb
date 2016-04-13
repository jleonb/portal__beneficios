class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :contract
      t.string :nexus
      t.string :pid
      t.string :name
      t.string :phone
      t.string :company

      t.timestamps null: false
    end
  end
end

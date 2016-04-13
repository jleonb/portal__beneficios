class CreateTops < ActiveRecord::Migration
  def change
    create_table :tops do |t|
      t.string :name
      t.string :banner
      t.text :description
      t.string :contact
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end

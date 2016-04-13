class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.string :contract
      t.string :category
      t.string :banner
      t.string :name
      t.text :description
      t.string :img1
      t.string :img2
      t.string :img3
      t.string :img4
      t.string :img5
      t.string :address
      t.string :phone
      t.string :email
      t.string :website
      t.string :url_map
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :contact

      t.timestamps null: false
    end
  end
end

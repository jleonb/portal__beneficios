class CreateNexus < ActiveRecord::Migration
  def change
    create_table :nexus do |t|
      t.string :number
      t.string :agreement_contract
      t.string :user_contract

      t.timestamps null: false
    end
  end
end

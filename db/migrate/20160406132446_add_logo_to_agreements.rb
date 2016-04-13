class AddLogoToAgreements < ActiveRecord::Migration
  def change
    add_column :agreements, :logo, :string
  end
end

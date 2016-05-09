class AddAttachmentLogotipoToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :logotipo
    end
  end

  def self.down
    remove_attachment :users, :logotipo
  end
end

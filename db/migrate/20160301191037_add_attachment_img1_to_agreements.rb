class AddAttachmentImg1ToAgreements < ActiveRecord::Migration
  def self.up
    change_table :agreements do |t|
      t.attachment :img1
    end
  end

  def self.down
    remove_attachment :agreements, :img1
  end
end

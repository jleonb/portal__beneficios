class AddAttachmentImg2ToAgreements < ActiveRecord::Migration
  def self.up
    change_table :agreements do |t|
      t.attachment :img2
    end
  end

  def self.down
    remove_attachment :agreements, :img2
  end
end

class AddAttachmentImg4ToAgreements < ActiveRecord::Migration
  def self.up
    change_table :agreements do |t|
      t.attachment :img4
    end
  end

  def self.down
    remove_attachment :agreements, :img4
  end
end

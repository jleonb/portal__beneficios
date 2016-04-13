class AddAttachmentImg5ToAgreements < ActiveRecord::Migration
  def self.up
    change_table :agreements do |t|
      t.attachment :img5
    end
  end

  def self.down
    remove_attachment :agreements, :img5
  end
end

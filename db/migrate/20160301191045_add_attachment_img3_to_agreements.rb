class AddAttachmentImg3ToAgreements < ActiveRecord::Migration
  def self.up
    change_table :agreements do |t|
      t.attachment :img3
    end
  end

  def self.down
    remove_attachment :agreements, :img3
  end
end

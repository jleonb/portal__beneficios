class AddAttachmentBannerToAgreements < ActiveRecord::Migration
  def self.up
    change_table :agreements do |t|
      t.attachment :banner
    end
  end

  def self.down
    remove_attachment :agreements, :banner
  end
end

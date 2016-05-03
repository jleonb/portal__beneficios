class Agreement < ActiveRecord::Base
	has_attached_file :banner, styles: { large: "400x640>", thumb: "150x150#" }
  validates_attachment_content_type :banner, content_type: /\Aimage\/.*\Z/
  has_attached_file :img1, styles: { large: "500x350>", thumb: "150x150#" }
  validates_attachment_content_type :img1, content_type: /\Aimage\/.*\Z/
  has_attached_file :img2, styles: { large: "500x350>", thumb: "150x150#" }
  validates_attachment_content_type :img2, content_type: /\Aimage\/.*\Z/
  has_attached_file :img3, styles: { large: "500x350>", thumb: "150x150#" }
  validates_attachment_content_type :img3, content_type: /\Aimage\/.*\Z/
  has_attached_file :img4, styles: { large: "500x350>", thumb: "150x150#" }
  validates_attachment_content_type :img4, content_type: /\Aimage\/.*\Z/
  has_attached_file :img5, styles: { large: "500x350>", thumb: "150x150#" }
  validates_attachment_content_type :img5, content_type: /\Aimage\/.*\Z/




end

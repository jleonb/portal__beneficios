class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :logo, styles: { large: "200x100>", thumb: "130x40>" }
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

end
# == Schema Information
#
# Table name: hs_blogs
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  text       :text
#  abstract   :text
#  tags       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  has_avatar :integer
#  slug       :string(255)
#  image      :string(255)
#

class HsBlog < ActiveRecord::Base
  attr_accessible :abstract, :tags, :text, :title, :has_avatar, :image, :remote_image_url

  #no mostrar el id en la url
  extend FriendlyId
  friendly_id :title, use: :slugged

  #uploader de imagenes para las entradas
  mount_uploader :image, BlogImageUploader

  #validaciones
  validates :title, presence: true
  validates :text, presence: true
  validates :abstract, presence: true
  validates :tags, presence: true
  validates :has_avatar, presence: true

end

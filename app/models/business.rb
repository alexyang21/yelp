class Business < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'file type is not allowed (only jpeg/png/gif images)'

  geocoded_by :full_address
  after_validation :geocode

  has_many :reviews, dependent: :destroy

  def full_address
    [address, citystatezip].compact.join(', ')
  end
end

class Article < ActiveRecord::Base
  belongs_to :admin

  has_attached_file :cover, styles: { thumb: "600x>", mini: "300x>" }
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/
end

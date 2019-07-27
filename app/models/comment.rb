class Comment < ApplicationRecord
  has_one_attached :image

  def self.Comment_exist?(id)
    comment_flug = Comment.find_by(id: id)
    return comment_flug
  end

end

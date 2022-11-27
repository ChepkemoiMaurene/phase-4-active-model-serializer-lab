class PostSerializer < ActiveModel::Serializer
  attributes :title, :show_content
  def show_content
    "#{self.object.content[0..40]}..."
  end
  has_many :tags
  belongs_to :author
end

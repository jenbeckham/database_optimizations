class Hit < ActiveRecord::Base
  belongs_to :subject, polymorphic: true

  validates :subject_id, presence: true
  validates :subject_type, presence: true

  default_scope {order("percent_similarity DESC")}
end

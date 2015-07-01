class Assembly < ActiveRecord::Base
  has_attached_file :uploaded_file
  validates_attachment_content_type :uploaded_file, :content_type => pdf
  has_many :sequences
  has_many :genes, through: :sequences
  has_many :hits, through: :genes
  #has_many through does the same as the hits method below.
  #not recommended for going up as that is messy with polymorphic


  # def hits
  #   hits = Hit.where(
  #   subject_id: Gene.where(
  #   sequence_id: Sequence.where(
  #   assembly_id: Assembly.where(
  #   name: params[:name]))).order(percent_similarity: :desc)
  # end
end

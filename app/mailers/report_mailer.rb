class ReportMailer < ApplicationMailer

  def report (email, assembly_name)
    @assembly = Assembly.find_by_name(params[:name])
    @hits = Hit.where(
    subject_id: Gene.where(
    sequence_id: Sequence.where(
    assembly_id: Assembly.where(
    name: params[:name]))).order(percent_similarity: :desc)

    mail to: email
  end
end

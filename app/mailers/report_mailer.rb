class ReportMailer < ApplicationMailer

  def report (name, email)
    @assembly = Assembly.find_by_name(name: name)
    @hits = Hit.where(
    subject_id: Gene.where(
    sequence_id: Sequence.where(
    assembly_id: Assembly.where(
    name: params[:name]))).order(percent_similarity: :desc)

    mail to: email
  end
end

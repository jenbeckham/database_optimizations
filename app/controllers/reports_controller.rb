class ReportsController < ApplicationController
  def all_data
    # @email = params[:email]
    # @name = params[:name]
    ReportsMakerJob.perform_later(params[:name], params[:email])
    # ReportMailer.report(@email).deliver_later
    # @hits = Hit.where(
    # subject_id: Gene.where(
    # sequence_id: Sequence.where(
    # assembly_id: Assembly.where(
    # name: params[:name]))).order(percent_similarity: :desc)
  end
end

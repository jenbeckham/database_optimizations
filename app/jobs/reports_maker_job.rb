class ReportsMakerJob < ActiveJob::Base
  queue_as :default

  def perform(name, email)
    ReportMailer.report(email, assembly_name).deliver_now
  end
end

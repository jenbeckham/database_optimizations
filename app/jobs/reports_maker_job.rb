class ReportsMakerJob < ActiveJob::Base
  queue_as :default

  def perform(name, email)
    ReportMailer.report(name, email).deliver_now
  end
end

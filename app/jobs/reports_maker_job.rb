class ReportsMakerJob < ActiveJob::Base
  queue_as :default

  def perform(name, email)
    ReportMailer.report(email, name).deliver_now
  end
end

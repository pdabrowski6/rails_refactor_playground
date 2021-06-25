class Project < ApplicationRecord
  belongs_to :client
  validates_presence_of :name, :stack, :status

  enum status: [:started, :finished, :rejected, :paid]

  def project_not_in_finished_or_paid_status?
    status != 'finished' && status != 'paid'
  end
end

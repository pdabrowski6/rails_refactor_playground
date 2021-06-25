class Client < ApplicationRecord
  validates :name, presence: true

  has_many :projects

  def profitable?
    project_statuses = projects.map(&:status)
    count = project_statuses.select { |status| status == 'paid' }.size
    count > 0
  end
end

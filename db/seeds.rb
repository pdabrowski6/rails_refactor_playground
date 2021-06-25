['Telecode', 'Program Byte', 'Clodfuse', 'MonoScript'].each do |name|
  client = Client.create!(name: name)
  projects = [
    { name: 'Maintenance', stack: 'Ruby', status: :paid, active: true },
    { name: 'Mobile app', stack: 'Java', status: :started, active: true },
    { name: 'MVP', stack: 'Ruby, Rails', status: :rejected },
    { name: 'API', stack: 'Go', status: :finished, active: false }
  ]

  projects.each do |project_attributes|
    client.projects.create!(project_attributes)
  end
end

# Create a default user
AdminUser.create! first_name: "mani", last_name: "narayanan", email: "mani@arrivusystems.com", password: "admin123$", password_confirmation: "admin123$", time_zone: Rails.application.config.time_zone, role: "admin"
AdminUser.create! first_name: "needhu", last_name: "c", email: "needhu@arrivusystems.com", password: "admin123$", password_confirmation: "admin123$", time_zone: Rails.application.config.time_zone, role: "admin"

 # Setup the bundled trackers
%w(Bug Design Development Project\ Management QA).each do |title|
  TicketCategory.create name: title
end

# Create the active statuses
%w(New In\ Progress Completed QA\ Ready).each do |title|
  TicketStatus.create name: title
end

# Create the closed statuses
%w(Closed QA\ Approved).each do |title|
  TicketStatus.create name: title, active: false
end

# Setup the bundled priorities
%w(low normal high immediate).each do |lower|
  TicketPriority.create name: lower.titleize, weight: lower
end

# Create default teams
%w(Design Development).each do |title|
  Team.create name: title
end

# Create a default client with the same name as the account (doing internal work)
Client.create name: "Internal"

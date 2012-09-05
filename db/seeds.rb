# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Proposal.all.each { |p| p.destroy }

user_one = User.find_by_name('one')
user_two = User.find_by_name('two')
user_admin = User.first

users = [user_one, user_two, user_admin]
statuses = [ProposalStatus.new_status, ProposalStatus.published_status, ProposalStatus.review_status]

statuses.each do |status|
  users.each do |user|
    detail = ParameterDetail.first(:order => "RANDOM()")
    prop = Proposal.new(:name => "#{status.name} Param #{user.name}", :protected => false)
    prop.parameter_detail = detail
    prop.proposal_status = status
    prop.user = user
    prop.save!
  end
end
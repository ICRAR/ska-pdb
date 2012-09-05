class ProposalStatus < ActiveRecord::Base
  def self.new_status
    find_by_name('new')
  end

  def self.published_status
    find_by_name('published')
  end

  def self.review_status
    find_by_name('under review')
  end
end

class CreateAndAddProposalStatus < ActiveRecord::Migration
  class ProposalStatus < ActiveRecord::Base
  end

  def up
    create_table "proposal_statuses", :force => true do |t|
      t.string "name"
    end

    new_proposal = ProposalStatus.create!(:name => 'new')
    ProposalStatus.create!(:name => 'under review')
    ProposalStatus.create!(:name => 'published')

    add_column :proposals, :proposal_status_id, :integer

    Proposal.all.each do |p|
      p.update_attributes!(:proposal_status_id => new_proposal.id)
    end
  end

  def down
    drop_table :proposal_statuses
    remove_column :proposals, :proposal_status_id
  end
end

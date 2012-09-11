module ProposalHelper
  def get_proposal_detail_path proposal
    return proposal_path(proposal) if proposal.proposal_status == ProposalStatus.published_status
    return edit_proposal_path(proposal) if current_user.admin?
    return edit_proposal_path(proposal) if proposal.user == current_user

    proposal_path(proposal)
  end
end
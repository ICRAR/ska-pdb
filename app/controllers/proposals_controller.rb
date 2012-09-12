class ProposalsController < ApplicationController
  before_filter :redirect_to_root_unless_signed_in
  before_filter :redirect_to_root_unless_admin, :only => [:new_proposals]

  def index
    @proposals = Proposal.by_status(ProposalStatus.review_status).paginate(:page => params[:page], :per_page => get_page_size)
  end

  def new
    @proposal = Proposal.new
    @proposal.user = current_user
    render :edit
  end

  def edit
    @proposal = Proposal.find(params[:id])
  end

  def create
    @proposal = Proposal.new
    @proposal.user = current_user
    @proposal.proposal_status = ProposalStatus.new_status

    if @proposal.update_attributes(params[:proposal])
      flash[:notice] = "Proposal created"
    else
      flash[:alert] = @proposal.errors.empty? ? "Unknown error: unable to create proposal" : @proposal.errors.full_messages.to_sentence
    end
    render :edit
  end

  def update
    @proposal = Proposal.find(params[:id])

    if @proposal.update_attributes(params[:proposal])
      flash[:notice] = "Proposal updated"
    else
      flash[:alert] = @proposal.errors.empty? ? "Unknown error: unable to save proposal" : @proposal.errors.full_messages.to_sentence
    end
    render :edit
  end

  def show
    @proposal = Proposal.find(params[:id])
  end

  def for_logged_in_user
    @proposals = Proposal.for_user(current_user).paginate(:page => params[:page], :per_page => get_page_size)
   render :index
  end

  def new_proposals
    @proposals = Proposal.by_status(ProposalStatus.new_status).paginate(:page => params[:page], :per_page => get_page_size)
    render :index
  end

end
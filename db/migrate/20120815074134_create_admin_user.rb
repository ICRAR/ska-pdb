class CreateAdminUser < ActiveRecord::Migration
  def up
    User.create!(:email=>'pdb-admin@icrar.org', :name => "ICRAR PDB Administrator", :username=>'pdb-admin', :password=>'password', :admin => true)
  end

  def down
    user = User.find_by_username('pdb-admin')
    if user
      user.destroy
    end
  end
end

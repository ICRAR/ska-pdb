namespace :db do
  desc "index all paramaters"
  task :index_parameters => :environment do
    p "Indexing all #{Parameter.all.count} Parameters"
    Parameter.all.each do |p|
      index = ParameterIndex.build_from_parameter(p)
      index.save!
    end
    p "indexing done"
  end
end
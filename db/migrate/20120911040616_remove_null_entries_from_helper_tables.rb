class RemoveNullEntriesFromHelperTables < ActiveRecord::Migration
  class Scope0 < ActiveRecord::Base
  end

  class Scope1 < ActiveRecord::Base
  end

  class Scope2 < ActiveRecord::Base
  end

  class Scope3 < ActiveRecord::Base
  end

  class Direction < ActiveRecord::Base
  end

  class Kind < ActiveRecord::Base
  end

  class Case < ActiveRecord::Base
  end

  class ParamClass < ActiveRecord::Base
  end

  class ParameterDetail < ActiveRecord::Base
    belongs_to :scope0
    belongs_to :scope1
    belongs_to :scope2
    belongs_to :scope3
    belongs_to :case
    belongs_to :param_class
    belongs_to :kind
    belongs_to :direction
  end

  def up
    {
      Scope0 => :scope0_id,
      Scope1 => :scope1_id,
      Scope2 => :scope2_id,
      Scope3 => :scope3_id,
      Case => :case_id,
      Kind => :kind_id,
      Direction => :direction_id,
      ParamClass => :param_class_id
    }.each_pair do |clazz, field|
      entry = clazz.find_by_name(nil)
      if entry
        details = ParameterDetail.where(field => entry.id)
        details.each { |detail| detail.update_attribute(field, nil) }
        entry.destroy
      end
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

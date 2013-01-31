class AddScope05ToParameterNamesInExpressions < ActiveRecord::Migration

  def up
    ParameterDetail.all.each  do |detail|

      if detail.expression.nil? or detail.expression == ""
        next
      end

      pre_value = detail.expression.dup

      # Replace :Nature: with Nature: and add Nature: where it does not exist
      # Note that gsub! does not work; ActiveRecord needs to see the setter invoked to mark the entity as dirty
      detail.expression = detail.expression.gsub(/%:Nature:([\w].*?)%/, '%Nature:\1%').gsub(/%(?!Nature:)([\w:].*?)%/, '%Nature:\1%')

      puts "Conversion before/after\n\t#{pre_value}\n\t#{detail.expression}"

      detail.save!
    end

  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end

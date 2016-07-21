class ChangeDeletedAtTypeInSnippets < ActiveRecord::Migration
  def self.up
    change_column :code_snippets, :deleted_at, :datetime
  end

  def self.down
   change_column :code_snippets, :deleted_at, :datetime
  end

end

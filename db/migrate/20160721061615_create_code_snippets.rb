class CreateCodeSnippets < ActiveRecord::Migration
  def change
    create_table :code_snippets do |t|
      t.string :title
      t.text :description
      t.text :code
      t.integer :user_id
      t.integer :created_by
      t.integer :updated_by
      t.date :deleted_at
      t.string :status
      t.timestamps null: true
    end
  end
end

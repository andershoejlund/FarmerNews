class AddTypeToNewsAndQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :news, :type, :integer, default: 0
    add_column :questions, :type, :integer, default: 1
  end
end

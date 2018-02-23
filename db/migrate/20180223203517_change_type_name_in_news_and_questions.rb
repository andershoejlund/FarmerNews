class ChangeTypeNameInNewsAndQuestions < ActiveRecord::Migration[5.1]
  def change
    rename_column :questions, :type, :type_oh
    rename_column :news, :type, :type_oh
  end
end

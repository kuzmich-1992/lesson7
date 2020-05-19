class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|
    t.string :title
    t.timestamps
    end
  end
end

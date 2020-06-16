class CreateAdposts < ActiveRecord::Migration[6.0]
  def change
    create_table :adposts do |t|
      t.string :title
      t.string :description
      t.string :company_name
      t.timestamps
    end
  end
end

class CreateCrawls < ActiveRecord::Migration[5.1]
  def change
    create_table :crawls do |t|
      t.string :name
      t.string :reg_no, limit: 20
      t.date :dob
    end
  end
end

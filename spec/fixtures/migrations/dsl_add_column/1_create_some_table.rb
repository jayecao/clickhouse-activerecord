
class CreateSomeTable < ActiveRecord::Migration[5.0]
  def up
    create_table :some, options: 'MergeTree(date, (date), 8192)' do |t|
      t.date :date
    end
  end
end


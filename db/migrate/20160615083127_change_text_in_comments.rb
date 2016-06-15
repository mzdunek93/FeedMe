class ChangeTextInComments < ActiveRecord::Migration
  change_table :comments do |t|
    t.change :text, :text
  end
end

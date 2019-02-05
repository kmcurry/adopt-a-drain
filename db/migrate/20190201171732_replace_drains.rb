class ReplaceDrains < ActiveRecord::Migration
  require 'csv'
  def change
    CSV.foreach('../../norfolk.csv', :headers => true) do |row|
      Thing.create!(row.to_hash)
    end
  end
end

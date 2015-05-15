class MakeShowsAJoinTable < ActiveRecord::Migration
  def change
    # the bands table wasn't a join table, so lets drop it
    drop_table(:shows)

    #the bands_venues join table
    create_table(options = {:join_table => :shows}) do |t|
      t.column(:band_id, :integer)
      t.column(:venue_id, :integer)
      t.column(:show_date, :date)
      # TODO: A boolean played column could be added

      t.timestamps
    end
  end
end

class RenameShowsToBandsVenues < ActiveRecord::Migration
  def change
    #the bands_venues join table
    create_table(:bands_venues) do |t|
      t.column(:band_id, :integer)
      t.column(:venue_id, :integer)
      t.column(:show_date, :date)
      # TODO: A boolean played column could be added

      t.timestamps
    end
  end
end

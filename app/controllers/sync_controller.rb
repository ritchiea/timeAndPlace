class SyncController < ApplicationController

  def call
    last_sync_at = Time.now

    @shares = Shares.find_by(receiver_id: current_user.id)
    render json: @shares
  end

end

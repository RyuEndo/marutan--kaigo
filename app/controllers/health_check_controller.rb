class HealthCheckController < ApplicationController
  def show
    if database_available?
      head :ok
    else
      head :service_unavailable
    end
  end

  private

  def database_available?
    con = ActiveRecord::Base.connection
    con.execute('SELECT 1').present?
  end
end

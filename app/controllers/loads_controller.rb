class LoadsController < ApplicationController

  def load1
    sleep 1
  end

  def load2
    sleep 2
  end

  def load5
    sleep 5
  end

  def load100
    sleep 100
  end

  def load500
    sleep 500
  end

end
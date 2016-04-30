class TimeController < ApplicationController

  def main
    @time = Time.now.strftime("%l:%M:%S")
  end

  def updateTime
    @time = Time.now.strftime("%l:%M:%S")
    respond_to do |format|
      format.js
      format.html {redirect_to :action=>"main"}
    end
  end

end


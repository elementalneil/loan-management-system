class HomeController < ApplicationController
  def index
  end

  def bank_details
    if params[:q] == "sbi"
      @bank = "sbi"
      @head = "State Bank of India"
      @body = "Put all content about SBI Here.
               Find this file at app/controllers/home_controller.rb.
               Do not add any bank specific content to the actual html.erb file.
               Add all bank specific content here.
              "
    elsif params[:q] == "icici"
      @bank = "icici"
      @head = "ICICI Bank"
      @body = "Put all content about ICICI Bank Here.
               Find this file at app/controllers/home_controller.rb.
               Do not add any bank specific content to the actual html.erb file.
               Add all bank specific content here.
              "
    elsif params[:q] == "axis"
      @bank = "axis"
      @head = "AXIS Bank"
      @body = "Put all content about AXIS Bank Here.
               Find this file at app/controllers/home_controller.rb.
               Do not add any bank specific content to the actual html.erb file.
                Add all bank specific content here.
              "
    else
      @bank = "hdfc"
      @head = "HDFC Bank"
      @body = "Put all content about HDFC Here.
               Find this file at app/controllers/home_controller.rb.
               Do not add any bank specific content to the actual html.erb file.
               Add all bank specific content here.
              "
    end
  end

  def about
  end
end

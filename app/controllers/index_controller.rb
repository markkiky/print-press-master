class IndexController < ApplicationController
  before_action :authenticate_user!
  before_action :permit_params, only: [:create_permit]
  require 'rqrcode'

  @@start_lid = 13339
  @@serial_number = 1549
  @@control_number = 3364


  def index
    @permits = Liqour.all
    @schedule = Schedule.all
  end

  def upload_file
    Liqour.upload(params[:file])
    redirect_to root_url
  end

  def upload_schedule
    Schedule.upload(params[:file])
    redirect_to root_url
  end

  def create_permit
    if Liqour.where(is_renewal: false).any? == false
      @permit = Liqour.new(permit_params)
      @permit.lid = @@start_lid

      logger.debug { "The First If" }
    else
      @permit = Liqour.new(permit_params)
      @last_permit = Liqour.where(is_renewal: false).last
      @permit.lid = @last_permit.lid.to_i + 1
      logger.debug { "At Else" }
    end
    @permit.control_number = Liqour.last.control_number.to_i + 1
    @permit.serial_number = Liqour.last.serial_number.to_i + 1
    @permit.valid_from = @permit.date_paid
    if @permit.save!
      logger.debug { "here now" }
      redirect_to root_url
    end
  end

  def renewal_permit
    if Liqour.any?
      @permit = Liqour.new(permit_params)
      @permit.is_renewal = true
      @permit.control_number = Liqour.last.control_number.to_i + 1
      @permit.serial_number = Liqour.last.serial_number.to_i + 1
    else
      @permit = Liqour.new(permit_params)
      @permit.is_renewal = true
      @permit.control_number = @@control_number
      @permit.serial_number = @@serial_number
    end
    if @permit.save!
      redirect_to root_url
    end
  end

  def delete
    Liqour.find(params[:id]).delete
    redirect_to root_url
  end

  def update
    @permit = Liqour.find(params[:id])
    @permit.update(permit_params)
    redirect_to root_url
  end

  def edit_permit
    @permit = Liqour.find(params[:id])
    @schedule = Schedule.all
  end

  def print_permit
    @permit = Liqour.find(params[:id])
    @permit.update()
    # @permit.updated(mark_as_printed: true)
  end

  def print_permit_new
    @permit = Liqour.find(params[:id])
    @permit.update(mark_as_printed: true, issue_date: Date.today)
  end

  private

  def permit_params
    params.permit(:business_name, :bid_number, :licence_type, :amount, :date_paid, :licence_type, :physical_address, :plot_number, :schedule_id, :lid, :valid_from)
  end
end

class Admin::ReturnsController < ApplicationController
  # GET /admin/returns
  # GET /admin/returns.json
  def index
    @admin_returns = Admin::Return.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_returns }
    end
  end

  # GET /admin/returns/1
  # GET /admin/returns/1.json
  def show
    @admin_return = Admin::Return.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_return }
    end
  end

  # GET /admin/returns/new
  # GET /admin/returns/new.json
  def new
    @admin_return = Admin::Return.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_return }
    end
  end

  # GET /admin/returns/1/edit
  def edit
    @admin_return = Admin::Return.find(params[:id])
  end

  # POST /admin/returns
  # POST /admin/returns.json
  def create
    @admin_return = Admin::Return.new(params[:admin_return])

    respond_to do |format|
      if @admin_return.save
        format.html { redirect_to @admin_return, notice: 'Return was successfully created.' }
        format.json { render json: @admin_return, status: :created, location: @admin_return }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_return.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/returns/1
  # PUT /admin/returns/1.json
  def update
    @admin_return = Admin::Return.find(params[:id])

    respond_to do |format|
      if @admin_return.update_attributes(params[:admin_return])
        format.html { redirect_to @admin_return, notice: 'Return was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_return.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/returns/1
  # DELETE /admin/returns/1.json
  def destroy
    @admin_return = Admin::Return.find(params[:id])
    @admin_return.destroy

    respond_to do |format|
      format.html { redirect_to admin_returns_url }
      format.json { head :no_content }
    end
  end
end

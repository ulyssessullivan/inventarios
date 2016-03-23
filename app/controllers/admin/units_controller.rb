class Admin::UnitsController < ApplicationController
  # GET /admin/units
  # GET /admin/units.json
  def index
    @admin_units = Admin::Unit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_units }
    end
  end

  # GET /admin/units/1
  # GET /admin/units/1.json
  def show
    @admin_unit = Admin::Unit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_unit }
    end
  end

  # GET /admin/units/new
  # GET /admin/units/new.json
  def new
    @admin_unit = Admin::Unit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_unit }
    end
  end

  # GET /admin/units/1/edit
  def edit
    @admin_unit = Admin::Unit.find(params[:id])
  end

  # POST /admin/units
  # POST /admin/units.json
  def create
    @admin_unit = Admin::Unit.new(params[:admin_unit])

    respond_to do |format|
      if @admin_unit.save
        format.html { redirect_to @admin_unit, notice: 'Unit was successfully created.' }
        format.json { render json: @admin_unit, status: :created, location: @admin_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/units/1
  # PUT /admin/units/1.json
  def update
    @admin_unit = Admin::Unit.find(params[:id])

    respond_to do |format|
      if @admin_unit.update_attributes(params[:admin_unit])
        format.html { redirect_to @admin_unit, notice: 'Unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/units/1
  # DELETE /admin/units/1.json
  def destroy
    @admin_unit = Admin::Unit.find(params[:id])
    @admin_unit.destroy

    respond_to do |format|
      format.html { redirect_to admin_units_url }
      format.json { head :no_content }
    end
  end
end

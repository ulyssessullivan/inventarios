class Admin::OutputsController < ApplicationController
  # GET /admin/outputs
  # GET /admin/outputs.json
  def index
    @admin_outputs = Admin::Output.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_outputs }
    end
  end

  # GET /admin/outputs/1
  # GET /admin/outputs/1.json
  def show
    @admin_output = Admin::Output.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_output }
    end
  end

  # GET /admin/outputs/new
  # GET /admin/outputs/new.json
  def new
    @admin_output = Admin::Output.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_output }
    end
  end

  # GET /admin/outputs/1/edit
  def edit
    @admin_output = Admin::Output.find(params[:id])
  end

  # POST /admin/outputs
  # POST /admin/outputs.json
  def create
    @admin_output = Admin::Output.new(params[:admin_output])

    respond_to do |format|
      if @admin_output.save
        format.html { redirect_to @admin_output, notice: 'Output was successfully created.' }
        format.json { render json: @admin_output, status: :created, location: @admin_output }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_output.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/outputs/1
  # PUT /admin/outputs/1.json
  def update
    @admin_output = Admin::Output.find(params[:id])

    respond_to do |format|
      if @admin_output.update_attributes(params[:admin_output])
        format.html { redirect_to @admin_output, notice: 'Output was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_output.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/outputs/1
  # DELETE /admin/outputs/1.json
  def destroy
    @admin_output = Admin::Output.find(params[:id])
    @admin_output.destroy

    respond_to do |format|
      format.html { redirect_to admin_outputs_url }
      format.json { head :no_content }
    end
  end
end

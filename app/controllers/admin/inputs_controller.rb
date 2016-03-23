class Admin::InputsController < ApplicationController
  # GET /admin/inputs
  # GET /admin/inputs.json
  def index
    @admin_inputs = Admin::Input.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_inputs }
    end
  end

  # GET /admin/inputs/1
  # GET /admin/inputs/1.json
  def show
    @admin_input = Admin::Input.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_input }
    end
  end

  # GET /admin/inputs/new
  # GET /admin/inputs/new.json
  def new
    @admin_input = Admin::Input.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_input }
    end
  end

  # GET /admin/inputs/1/edit
  def edit
    @admin_input = Admin::Input.find(params[:id])
  end

  # POST /admin/inputs
  # POST /admin/inputs.json
  def create
    @admin_input = Admin::Input.new(params[:admin_input])

    respond_to do |format|
      if @admin_input.save
        format.html { redirect_to @admin_input, notice: 'Input was successfully created.' }
        format.json { render json: @admin_input, status: :created, location: @admin_input }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/inputs/1
  # PUT /admin/inputs/1.json
  def update
    @admin_input = Admin::Input.find(params[:id])

    respond_to do |format|
      if @admin_input.update_attributes(params[:admin_input])
        format.html { redirect_to @admin_input, notice: 'Input was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/inputs/1
  # DELETE /admin/inputs/1.json
  def destroy
    @admin_input = Admin::Input.find(params[:id])
    @admin_input.destroy

    respond_to do |format|
      format.html { redirect_to admin_inputs_url }
      format.json { head :no_content }
    end
  end
end

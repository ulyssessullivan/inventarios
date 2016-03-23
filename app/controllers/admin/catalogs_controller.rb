class Admin::CatalogsController < ApplicationController
  # GET /admin/catalogs
  # GET /admin/catalogs.json
  def index
    @admin_catalogs = Admin::Catalog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_catalogs }
    end
  end

  # GET /admin/catalogs/1
  # GET /admin/catalogs/1.json
  def show
    @admin_catalog = Admin::Catalog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_catalog }
    end
  end

  # GET /admin/catalogs/new
  # GET /admin/catalogs/new.json
  def new
    @admin_catalog = Admin::Catalog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_catalog }
    end
  end

  # GET /admin/catalogs/1/edit
  def edit
    @admin_catalog = Admin::Catalog.find(params[:id])
  end

  # POST /admin/catalogs
  # POST /admin/catalogs.json
  def create
    @admin_catalog = Admin::Catalog.new(params[:admin_catalog])

    respond_to do |format|
      if @admin_catalog.save
        format.html { redirect_to @admin_catalog, notice: 'Catalog was successfully created.' }
        format.json { render json: @admin_catalog, status: :created, location: @admin_catalog }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/catalogs/1
  # PUT /admin/catalogs/1.json
  def update
    @admin_catalog = Admin::Catalog.find(params[:id])

    respond_to do |format|
      if @admin_catalog.update_attributes(params[:admin_catalog])
        format.html { redirect_to @admin_catalog, notice: 'Catalog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/catalogs/1
  # DELETE /admin/catalogs/1.json
  def destroy
    @admin_catalog = Admin::Catalog.find(params[:id])
    @admin_catalog.destroy

    respond_to do |format|
      format.html { redirect_to admin_catalogs_url }
      format.json { head :no_content }
    end
  end
end

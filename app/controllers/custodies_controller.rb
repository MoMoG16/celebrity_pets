class CustodiesController < ApplicationController
  before_action :set_custody, only: [:show, :edit, :update, :destroy]

  # GET /custodies
  # GET /custodies.json
  def index
    @custodies = Custody.all
  end

  # GET /custodies/1
  # GET /custodies/1.json
  def show
  end

  # GET /custodies/new
  def new
    @custody = Custody.new

  end

  # GET /custodies/1/edit
  def edit
  end

  # POST /custodies
  # POST /custodies.json
  def create
    @custody = Custody.new(custody_params)

    respond_to do |format|
      if @custody.save
        format.html { redirect_to @custody, notice: 'Custody was successfully created.' }
        format.json { render :show, status: :created, location: @custody }
      else
        format.html { render :new }
        format.json { render json: @custody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custodies/1
  # PATCH/PUT /custodies/1.json
  def update
    respond_to do |format|
      if @custody.update(custody_params)
        format.html { redirect_to @custody, notice: 'Custody was successfully updated.' }
        format.json { render :show, status: :ok, location: @custody }
      else
        format.html { render :edit }
        format.json { render json: @custody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custodies/1
  # DELETE /custodies/1.json
  def destroy
    @custody.destroy
    respond_to do |format|
      format.html { redirect_to custodies_url, notice: 'Custody was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custody
      @custody = Custody.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custody_params
      params.fetch(:custody, {})
    end
end

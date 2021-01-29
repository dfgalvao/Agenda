class RemembersController < ApplicationController
  before_action :set_remember, only: [:show, :edit, :update, :destroy]

  # GET /remembers
  # GET /remembers.json
  def index
    if(params[:search])
      @remembers = Remember.search(params[:search])
    else
      @remembers = Remember.all
    end
  end

  # GET /remembers/1
  # GET /remembers/1.json
  def show
  end

  # GET /remembers/new
  def new
    @remember = Remember.new
  end

  # GET /remembers/1/edit
  def edit
  end

  # POST /remembers
  # POST /remembers.json
  def create
    @remember = Remember.new(remember_params)

    respond_to do |format|
      if @remember.save
        format.html { redirect_to @remember, notice: 'Remember was successfully created.' }
        format.json { render :show, status: :created, location: @remember }
      else
        format.html { render :new }
        format.json { render json: @remember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remembers/1
  # PATCH/PUT /remembers/1.json
  def update
    respond_to do |format|
      if @remember.update(remember_params)
        format.html { redirect_to @remember, notice: 'Remember was successfully updated.' }
        format.json { render :show, status: :ok, location: @remember }
      else
        format.html { render :edit }
        format.json { render json: @remember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remembers/1
  # DELETE /remembers/1.json
  def destroy
    @remember.destroy
    respond_to do |format|
      format.html { redirect_to remembers_url, notice: 'Remember was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remember
      @remember = Remember.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def remember_params
      params.require(:remember).permit(:name, :email, :phone)
    end
end

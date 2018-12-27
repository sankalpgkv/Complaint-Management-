class ComplaintListsController < ApplicationController
  before_action :set_complaint_list, only: [:show, :edit, :update, :destroy, :complete]
  before_action :authenticate_user!

  # GET /complaint_lists
  # GET /complaint_lists.json
  def index
    @complaint_lists = ComplaintList.where(:user_id => current_user.id)
  end

  # GET /complaint_lists/1
  # GET /complaint_lists/1.json
  def show
  end

  # GET /complaint_lists/new
  def new
    @complaint_list = ComplaintList.new
  end

  # GET /complaint_lists/1/edit
  def edit
  end

  # POST /complaint_lists
  # POST /complaint_lists.json
  def create
    @complaint_list = ComplaintList.new(complaint_list_params)
    @complaint_list.user_id = current_user.id

    respond_to do |format|
      if @complaint_list.save
        format.html { redirect_to @complaint_list, notice: 'Complaint list was successfully created.' }
        format.json { render :show, status: :created, location: @complaint_list }
      else
        format.html { render :new }
        format.json { render json: @complaint_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complaint_lists/1
  # PATCH/PUT /complaint_lists/1.json
  def update
    respond_to do |format|
      if @complaint_list.update(complaint_list_params)
        format.html { redirect_to @complaint_list, notice: 'Complaint list was successfully updated.' }
        format.json { render :show, status: :ok, location: @complaint_list }
      else
        format.html { render :edit }
        format.json { render json: complaint_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complaint_lists/1
  # DELETE /complaint_lists/1.json
  def destroy
    @complaint_list.destroy
    respond_to do |format|
      format.html { redirect_to complaint_lists_url, notice: 'Complaint list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_complaint_list
    @complaint_list = ComplaintList.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def complaint_list_params
    params.require(:complaint_list).permit(:title, :description)
  end
end

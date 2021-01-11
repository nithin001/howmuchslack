class SlacksController < ApplicationController
  load_and_authorize_resource :slack

  # GET /slacks
  # GET /slacks.json
  def index
  end

  # GET /slacks/1
  # GET /slacks/1.json
  def show
  end

  # GET /slacks/new
  def new
    @slack = Slack.new
  end

  # GET /slacks/1/edit
  def edit
  end

  # POST /slacks
  # POST /slacks.json
  def create
    respond_to do |format|
      if @slack.save
        format.html { redirect_to @slack, notice: 'Slack was successfully created.' }
        format.json { render :show, status: :created, location: @slack }
      else
        format.html { render :new }
        format.json { render json: @slack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slacks/1
  # PATCH/PUT /slacks/1.json
  def update
    respond_to do |format|
      if @slack.update(slack_params)
        format.html { redirect_to @slack, notice: 'Slack was successfully updated.' }
        format.json { render :show, status: :ok, location: @slack }
      else
        format.html { render :edit }
        format.json { render json: @slack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slacks/1
  # DELETE /slacks/1.json
  def destroy
    @slack.destroy
    respond_to do |format|
      format.html { redirect_to slacks_url, notice: 'Slack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def slack_params
    params.require(:slack).permit( :hours, :minutes).merge(user: current_user)
  end
end

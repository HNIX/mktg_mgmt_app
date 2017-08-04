class ActionItemGroupsController < ApplicationController
  before_action :set_action_item_group, only: [:show, :edit, :update, :destroy]

  # GET /action_item_groups
  # GET /action_item_groups.json
  def index
    @action_item_groups = ActionItemGroup.all
  end

  # GET /action_item_groups/1
  # GET /action_item_groups/1.json
  def show
  end

  # GET /action_item_groups/new
  def new
    @action_item_group = ActionItemGroup.new
    @action_item_group.project_id = params[:project_id]
  end

  # GET /action_item_groups/1/edit
  def edit
  end

  # POST /action_item_groups
  # POST /action_item_groups.json
  def create
    @action_item_group = ActionItemGroup.new(action_item_group_params)

    respond_to do |format|
      if @action_item_group.save
        format.html { redirect_to tenant_project_url(tenant_id: Tenant.current_tenant_id, id: @action_item_group.project_id), notice: 'Action item group was successfully created.' }
        format.json { render :show, status: :created, location: @action_item_group }
      else
        format.html { render :new }
        format.json { render json: @action_item_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_item_groups/1
  # PATCH/PUT /action_item_groups/1.json
  def update
    respond_to do |format|
      if @action_item_group.update(action_item_group_params)
        format.html { redirect_to tenant_project_url(tenant_id: Tenant.current_tenant_id, id: @action_item_group.project_id), notice: 'Action item group was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_item_group }
      else
        format.html { render :edit }
        format.json { render json: @action_item_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_item_groups/1
  # DELETE /action_item_groups/1.json
  def destroy
    @action_item_group.destroy
    respond_to do |format|
      format.html { redirect_to action_item_groups_url, notice: 'Action item group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_item_group
      @action_item_group = ActionItemGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_item_group_params
      params.require(:action_item_group).permit(:name, :project_id)
    end
end

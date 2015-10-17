class AttributesController < ApplicationController
  before_action :require_logged_in
  
  def index
    @attribute_groups = [
      Attribute.where(group: "Personal Information").order(:id),
      Attribute.where(group: "Education").order(:id),
      Attribute.where(group: "Experience").order(:id),
      # Attribute.where(group: "Employment").order(:id),
      Attribute.where(group: "References").order(:id)
    ]
    render :index
  end
  
  def update
    Attribute.update(params[:attributes].keys, params[:attributes].values)
    flash[:messages] = ["Changes Saved!"]
    redirect_to attributes_url
  end
end

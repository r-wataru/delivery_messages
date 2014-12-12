class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def deliver
    redirect_to :documents
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:id])
    if @document.update_attributes document_params
      redirect_to :documents
    else
      render action: :edit
    end
  end

  private
  def document_params
    params.require(:document).permit(
      :subject, :body)
  end
end

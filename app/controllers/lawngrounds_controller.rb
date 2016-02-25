class LawngroundsController < InheritedResources::Base

	before_action :set_lawnground, only: [:show, :edit, :update, :destroy]

  def update
    @lawnground.update(lawnground_params)
    redirect_to action: :index
  end

  private

    def lawnground_params
      params.require(:lawnground).permit(:name)
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lawnground
      @lawnground = Lawnground.find(params[:id])
    end
end


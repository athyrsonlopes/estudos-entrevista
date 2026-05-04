class PagesController < ApplicationController
  def index
    @name = "Athy cinema"
  end

  def schedule
    @info = "O cinema abrirá 10h da manhã."
  end
end
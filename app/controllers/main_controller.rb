class MainController < ApplicationController
    def hello

    end

    def grettings

    end

    def salu2
        # params[:name]
        # params["name"]

        # creation variable de clase que puedo utilizar en las vistas
        @name = params["name"]
        # head :ok
    end

end
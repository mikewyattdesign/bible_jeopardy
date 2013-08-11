class StaticPagesController < ApplicationController
    def home
        render layout: "narrow"
    end
end

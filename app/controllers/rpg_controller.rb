class RpgController < ApplicationController
    def index
        @pack = session[:msg]
        render "index"
    end

    def farm
        a = 0
        session[:gold] ||= 0
        session[:msg] ||= []

        a = rand(10..20)
        session[:gold] += a

        session[:msg].push({status: "win", msg: "You have won #{a} gold!"})
        redirect_to "/"
    end

    def cave
        a = 0
        session[:gold] ||= 0
        session[:msg] ||= []

        a = rand(5..10)
        session[:gold] += a
        session[:msg].push({status: "win", msg: "You have won #{a} gold!"})
        redirect_to "/"
    end

    def house
        a = 0
        session[:gold] ||= 0
        session[:msg] ||= []

        a = rand(2..5)
        session[:gold] += a
        session[:msg].push({status: "win", msg: "You have won #{a} gold!"})

        redirect_to "/"

    end

    def casino
        a = 0
        session[:gold] ||= 0
        session[:msg] ||= []

        a = rand(-50..50)
        session[:gold] += a
        if a > 0
            session[:msg].push({status: "win", msg: "You have won #{a} gold!"})
        else
            session[:msg].push({status: "lose", msg: "You have lost #{a} gold!"})
        end
        redirect_to "/"
    end

    def clear
        session.clear
        redirect_to "/"
    end
end

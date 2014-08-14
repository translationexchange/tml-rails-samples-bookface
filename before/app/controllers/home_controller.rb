class HomeController < ApplicationController
  def index
    @users = {
        amy: {name: 'Amy Wong', gender: 'female'},
        peter: {name: 'Peter Shwartz', gender: 'male'},
        tom: {name: 'Tom Peterson', gender: 'male'},
        alex: {name: 'Alex Gordan', gender: 'male'},
        kate: {name: 'Kate Smith', gender: 'female'},
        liza: {name: 'Liza Simpson', gender: 'female'}
    }

    @stories = [
        {
            date: Date.new(2014, 8, 5),
            title: "<a href=''>#{@users[:amy][:name]}</a> and <a href=''>#{@users[:liza][:name]}</a> are now friends",
            photo: :amy
        },
        {
            date: Date.new(2014, 8, 2),
            title: "<a href=''>#{@users[:peter][:name]}</a> posted <a href=''>2 photos</a> to <a href=''>#{@users[:tom][:name]}'s</a> timeline",
            photo: :peter
        },
        {
            date: Date.new(2014, 8, 1),
            title: "<a href=''>#{@users[:kate][:name]}</a> and <a href=''>#{@users[:tom][:name]}</a> are now friends",
            photo: :kate
        },
        {
            date: Date.new(2014, 7, 4),
            title: "<a href=''>#{@users[:tom][:name]}</a> added 6 photos of <a href=''>#{@users[:kate][:name]}</a>",
            photo: :tom
        }
    ]

  end
end

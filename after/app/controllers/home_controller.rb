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
            title: '[link1: {actor}] and [link2: {target}] are now friends',
            photo: :amy,
            tokens: {
              link1: {href: '#', style:'font-weight:bold'},
              actor: [@users[:amy], :name],
              target: [@users[:liza], :name],
            }
        },
        {
            date: Date.new(2014, 8, 2),
            title: '[link: {actor}] posted [link: {count| a photo, #count# photos}] to [link: {target::pos}] timeline',
            photo: :peter,
            tokens: {
                link: {href: '#', style:'font-weight:bold'},
                count: 2,
                actor: [@users[:peter], :name],
                target: [@users[:tom], :name],
            }
        },
        {
            date: Date.new(2014, 8, 1),
            title: '[link1: {actor}] and [link2: {target}] are now friends',
            photo: :kate,
            tokens: {
                link1: {href: '#', style:'font-weight:bold'},
                actor: [@users[:kate], :name],
                target: [@users[:tom], :name],
            }
        },
        {
            date: Date.new(2014, 7, 4),
            title: '[link: {actor}] added [link: {count|| photo}] of {target}',
            photo: :tom,
            tokens: {
                link: {href: '#', style:'font-weight:bold'},
                count: 6,
                actor: [@users[:tom], :name],
                target: [@users[:kate], :name],
            }
        },
        {
            date: Date.new(2014, 6, 5),
            title: '{actors} are now friends',
            photo: :amy,
            tokens: {
                link: {href: '#', style:'font-weight:bold'},
                actors: [@users.values, lambda{ |user|
                   "<a href=''>#{user[:name]}</a>"
                }],
            }
        },

        {
            date: Date.new(2014, 5, 2),
            title: '[link: {actor}] commented on a photo uploaded by [link: {target}]',
            photo: :alex,
            tokens: {
                link: {href: '#', style:'font-weight:bold'},
                actor: [@users[:alex], :name],
                target: [@users[:kate], :name]
            }
        },
        {
            date: Date.new(2014, 4, 2),
            title: '[link: {actor}] liked a comment from [link: {target}]',
            photo: :liza,
            tokens: {
                link: {href: '#', style:'font-weight:bold'},
                actor: [@users[:liza], :name],
                target: [@users[:kate], :name]
            }
        }
    ]

  end
end

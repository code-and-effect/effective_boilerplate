namespace :effective_boilerplate do

  # bundle exec rake effective_boilerplate:seed
  task seed: :environment do
    load "#{__dir__}/../../db/seeds.rb"
  end

end

require 'rake' 
  
namespace :heroku do
     
  namespace :deploy do
    desc "deploy to staging"
    task :production do
        puts "Starting pre-compile..."
        system "rake assets:precompile RAILS_ENV=production"
        puts "Finished pre-compile."
        puts "Committing changes..."
        system "git add ."
        system "git commit -am'Precompiling assets for staging deployment'"
        puts "Pushing to heroku..."
        system "git push heroku master"
        system "rm -R public/assets"
        system "git add ."
        system "git commit -am'Removing Precompiling assets from project'"
        puts "application deployment finished!"
    end
  end
end
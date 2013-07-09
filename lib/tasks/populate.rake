namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    10.times do |n|
      puts "[DEBUG] creating user #{n+1} of 10"
      name = Faker::Name.name
      email = "user-#{n+1}@examples.com"
      password = "password"
      User.create!( name: name,
                    email: email,
                    password: password,
                    password_confirmation: password)
    end

    User.all.each do |user|
      puts "[DEBUG] uploading images for user #{user.id} of #{User.last.id}"
      10.times do |n|
        image = File.open(Dir.glob(File.join(Rails.root, 'sampleimages', '*')).sample)
        description = %w(cool awesome crazy wow adorbs incredible).sample
        user.posts.create!(image: image, description: description)
      end
    end
  end
end

def make_relationships
  users = User.all
  user  = users.first
  followed_users = users[2..50]
  followers      = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each      { |follower| follower.follow!(user) }
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([
  {
    email: 'test1@example.com',
    password: 'test1234',
    password_confirmation: 'test1234'
  },
  {
    email: 'test2@example.com',
    password: 'test1234',
    password_confirmation: 'test1234'
  },
  {
    email: 'test3@example.com',
    password: 'test1234',
    password_confirmation: 'test1234'
  }
  ])

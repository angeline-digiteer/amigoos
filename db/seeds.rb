# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed data for Post model
require 'date'

posts_data = [
  {
    title: "Welcome to Amigoos!",
    content: "This is our very first post. Welcome to the community!",
    author: "Admin",
    publish_date: Date.today - 3,
    active: true,
    featured: true
  },
  {
    title: "Community Guidelines",
    content: "Please be respectful and follow the community rules.",
    author: "Admin",
    publish_date: Date.today - 2,
    active: true,
    featured: false
  },
  {
    title: "Show Your Desk",
    content: "Share a photo or description of your workspace!",
    author: "Alice",
    publish_date: Date.today - 1,
    active: true,
    featured: false
  },
  {
    title: "How's Your Day?",
    content: "Feeling great today! Let's keep it up, everyone!",
    author: "Bob",
    publish_date: Date.today,
    active: true,
    featured: false
  },
  {
    title: "Tech Share: Rails Tips",
    content: "Here are some handy Rails tips for developers. Feel free to add more!",
    author: "Techie",
    publish_date: Date.today,
    active: true,
    featured: true
  }
]

posts_data.each do |attrs|
  Post.find_or_create_by!(title: attrs[:title]) do |post|
    post.content = attrs[:content]
    post.author = attrs[:author]
    post.publish_date = attrs[:publish_date]
    post.active = attrs[:active]
    post.featured = attrs[:featured]
  end
end


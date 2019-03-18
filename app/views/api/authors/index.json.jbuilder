json.array! @authors.each do |author|
  json.partial! "author.json.jbuilder", author: author 
end
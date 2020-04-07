class Response
  attr_accessor :id, :name
end

rsp = Response.new
rsp do |r|
  r.id = 1
  r.name = 'seb'
end

p rsp

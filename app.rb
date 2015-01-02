$: << './lib'

require 'sinatra/base'
require 'random_string'

class RandomStringServer < Sinatra::Base

  get '/*' do |query|
    options = parse_query(query)

    times = options.delete(:times) || 1
    times = 1 if (times < 1 or times > 99)

    rs = RandomString.new(options)

    content_type 'text/plain'
    times.times.map{ rs.string }.join("\n")
  end

  private

  def parse_query(query)
    options = {}

    if query =~ %r{(?:\A|/)(?<length>\d{1,2})?(?:x(?<times>\d{1,2}))?(?:/|\z)}
      length = $~[:length].to_i
      times  = $~[:times].to_i
      options[:length] = length if length > 0
      options[:times]  = times  if times  > 0
    end

    if query =~ %r{(\A|/)ac}
      options[:avoid_confusing] = true
    end

    if query =~ %r{(\A|/)as}
      options[:avoid_symbol] = true
    end

    options
  end
end


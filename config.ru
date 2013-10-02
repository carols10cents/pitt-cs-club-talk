use Rack::Static, :urls => ['/deck.js', '/images', '/js', '/css'],
                  :root => '.'

app = lambda do |env|
  [
    200,
    {
      'Content-Type' => 'text/html; charset=utf-8',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('index.html', File::RDONLY)
  ]
end

run app

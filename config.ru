use Rack::Static, 
  :urls => ["/img", "/style.css", "/retina.js", "favicon.ico", "favicon.png", "favicon@2x.png"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
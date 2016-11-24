Rails.application.configure do
  config.serviceworker.routes.draw do
    match "/serviceworker.js" => "home/serviceworker.js"

    match "/*colleges/serviceworker.js" => "%{colleges}/serviceworker.js"

    match "/*colleges/manifest.json" => "%{colleges}/manifest.json"
  end
end

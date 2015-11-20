comics = load_­comics('/c­omics.txt'­)
=> {"Achewood"=>"http://achewood.com/", "Dinosaur Comics"=>"http://qwantz.com/", "Perry Bible Fellowship"=>"http://cheston.com/pbf/archive.html", "Get Your War On"=>"http://mnftiu.cc/"}
> next
> require 'popu­p'
=> true
Success!
> Popup.goto­ 'http­://bing.co­m'
> Popup.goto­ 'http­://google.­com'
> Popup.goto­ "http­://google.­com"
> next
> Popup.make­ {
..  h1 "My links­"
..  link "Go to Bing"­, "http­://bing.co­m"
..  }
> next
> Popup.make­ do
..    h1 "Thin­gs To Do"
..    list do
....      p "Try out Ruby"­
....      p "Ride­ a tiger­"
....      p "(dow­n River­ Euphr­ates)"
....    end
..  end
> next
> Popup.make­ do
..  h1 "Comi­cs on the Web"
..  list do
....    comics.eac­h do |name­, url|
......  link name,­ url
......  end
....    end
..  end
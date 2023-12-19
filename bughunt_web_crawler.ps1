# crawl a given webdomain and check for bugs. 

# start with checking linkout from home for any 404 errors 

$url = "http://topcoder.com"

$response = Invoke-WebRequest -Uri $url

foreach ($linkout in $response.Links.href) {
    $linkout_response = Invoke-WebRequest -Uri $linkout
    if($linkout_response.StatusCode == 404){
        "Error"
    }
} $response.Links.href

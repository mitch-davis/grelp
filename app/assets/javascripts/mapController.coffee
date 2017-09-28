class CustomMarkerBuilder extends Gmaps.Google.Builders.Marker
  create_infowindow: ->
    return null unless _.isString @args.custom_infowindow

    boxText = document.createElement("div")
    boxText.setAttribute("class", 'custom_infowindow_content')
    boxText.innerHTML = @args.custom_infowindow
    @infowindow = new InfoBox(@infobox(boxText))

  infobox: (boxText)->
    content: boxText
    pixelOffset: new google.maps.Size(-140, 0)
    boxStyle:
      width: "280px"
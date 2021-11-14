import React, { useRef, useEffect, useState } from 'react'
import mapboxgl from '!mapbox-gl' // eslint-disable-line import/no-webpack-loader-syntax
import { invoke } from '@tauri-apps/api/tauri'
import logo from './logo.svg'
import tauriCircles from './tauri.svg'
import tauriWord from './wordmark.svg'
import './App.css'

// Mapbox API Access
mapboxgl.accessToken = 'pk.eyJ1IjoidGhlYWxleG1pbGxzIiwiYSI6ImNrdjNsdGg1NjBybGMzMHFwdHMwNWEzYzkifQ.Z81wKq-Tyx24FFpwEvNGQA';

function App() {

  const mapContainer = useRef(null)
  const map = useRef(null)
  const [lng, setLng] = useState(118.577)
  const [lat, setLat] = useState(-20.313)
  const [zoom, setZoom] = useState(17)

  useEffect(() => {

    if (map.current) {
      return
    }

    map.current = new mapboxgl.Map({
      container: mapContainer.current,
      style: 'mapbox://styles/mapbox/streets-v11',
      center: [lng,lat],
      pitch: 60,
      zoom: zoom
    })

    map.current.on('move', () => {
      setLng(map.current.getCenter().lng.toFixed(4));
      setLat(map.current.getCenter().lat.toFixed(4));
      setZoom(map.current.getZoom().toFixed(2));
    })

    map.current.on('load', () => {
      
    })

    map.current.showPadding = true
    map.current.setPadding({right: 600})
    map.current.setBearing(90)

  })

  function invokeRust() {
    invoke('my_custom_command')
  }

  function invokeRust2() {
    invoke('custom_response')
      .then(message => {
        alert(message)
      })
  }

  return (
    <div className="App">
      <button onClick={invokeRust}>Invoke</button>
      <button onClick={invokeRust2}>Invoke 2</button>
      <div ref={mapContainer} className="map-container" />
    </div>
  )
}

export default App

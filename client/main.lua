CreateThread(function()
    RequestStreamedTextureDict('circlemap', false)
    while not HasStreamedTextureDictLoaded('circlemap') do
        Wait(100)
    end

    AddReplaceTexture('platform:/textures/graphics', 'radarmasksm', 'circlemap', 'radarmasksm')

    SetMinimapClipType(1)
    SetMinimapComponentPosition('minimap', 'L', 'B', 0.025, -0.03, 0.153, 0.24) -- The zoom of the map (Lower the value more zoomed out it will be)
    SetMinimapComponentPosition('minimap_mask', 'L', 'B', 0.135, 0.12, 0.093, 0.164)
    SetMinimapComponentPosition('minimap_blur', 'L', 'B', 0.012, 0.022, 0.256, 0.337)
end)
json.key_format! camelize: :lower
json.set! :pokemon do 
    json.set! @pokemon.id do
        json.extract! @pokemon, :id, :name, :attack, :defense, :poke_type
        json.image_url asset_path("pokemon_snaps/#{@pokemon.image_url}")
    end
end

json.set! :moves do
    json.set! @move.id do
        json.extract! @move, :id, :name
    end
end
json.set! :item do
    json.set! @item.id do
        json.extract! @item, :id, :pokemon_id, :name, :price, :happiness
        json.image_url asset_path("#{@item.image_url}")
    end
end
"""
    import_game(path)

`path`: relative path to the game to import.
"""
function import_game(path::String)

    states = []
    open(path) do f

        contents = read(f, String)
        nodes = findall(";", contents)
        for i in range(1, length = length(nodes))

            node = contents[nodes[i]]

            # First, find who the winner was.
            result = node[findfirst("RE", node)]
            println(result)

            if contents[nodes[i] + 1] == "B" || contents[nodes[i] + 1] == "W"

            end # if

        end # for

    end # do

    return states

end # function

import_game("Go\\Training\\AI\\AlphaGo Zero\\Extended Data Figure 1 - AlphaGo Zero 20 block vs AlphaGo Lee\\Game_001.sgf")

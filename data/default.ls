export floors =
  default:
    [[0,0],[4,0],[4,4],[0,4]]
    [[4,0],[11,0],[11,4],[4,4]]
    [[11,0],[15,0],[15,4],[11,4]]
    [[0,4],[4,4],[4,11],[0,11]]
    [[4,4],[11,4],[11,11],[4,11]]
    [[11,4],[15,4],[15,11],[11,11]]
    [[0,11],[4,11],[4,15],[0,15]]
    [[4,11],[11,11],[11,15],[4,15]]
    [[11,11],[15,11],[15,15],[11,15]]

export walls =
  default: []

export tiles =
  plain:
    floors: floors.default
    walls: walls.default

export defs =
  step: 15
  dim: 10
  back_col: \dimgray
  floor_col: \white
  border_col: \lightgray
  border_thk: 1
  wall_col: \black
  wall_thk: 3
  grid:
    [[4,0],[4,15]]
    [[11,0],[11,15]]
    [[0,4],[15,4]]
    [[0,11],[15,11]]

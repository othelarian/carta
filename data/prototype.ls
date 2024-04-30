export cfg =
  dim: 20
  border_thk: 4
  custom:
    type1:
      wall_thk: 1
      walls:
        * start: [4,4], end: [11,4], door: 4, col: \red
        * start: [11,4], end: [11,11]
        * start: [11,11], end: [4,11], door: 4
        * start: [4,11], end: [4,4], thick: 8
    type2:
      wall_col: \orange
      walls:
        * start: [11,4], end: [11,11]
        * start: [11,11], end: [4,11], door: 4
        * start: [4,11], end: [4,4], thick: 8
      floor_col: \blue
    type3:
      border_col: \black
      border_thk: 10
      floor_col:
        '2': \yellow
        '4': \orange
  tiles:
    [
      * type: \none
      * type: \type2
    ]
    [
      * type: \type3
      * type: \type1, rot: \W
      * type: \plain
    ]
    [
      * type: \type1, rot: \S
    ]

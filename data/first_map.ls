a = [1,4,7,10]
b = [0,11]
sgrid = [[x,y] for let x in a for y in b] ++ [[y,x] for let x in a for y in b]

sfloor = [[[1,1],[10,1],[10,10],[1,10]]]

hall_stairs = [[[4,0],[7,0],[7,1],[4,1]]]
right_bottom_corridor = [[[10,7],[11,7],[11,10],[10,10]]]

fix = 0.3
fix-up = (val) -> val + fix
fix-dn = (val) -> val - fix

export cfg =
  step: 11
  wall_col: \black
  wall_thk: 6
  grid: sgrid
  custom:
    hall:
      floors: sfloor ++ hall_stairs ++ right_bottom_corridor
      floor_col: <[white silver white]>
      walls:
        * start: [fix-dn(1),1], end: [4,1]
        * start: [4,0], end: [4,8]
        * start: [4,9], end: [4,10]
        * start: [2,4], end: [4.6,4]
        * start: [1,7], end: [2,7]
        * start: [3,7], end: [4.6,7]
        * start: [7,0], end: [7,fix-up 1]
        * start: [fix-dn(7),1], end: [fix-up(10),1]
        * start: [10,fix-dn 1], end: [10,fix-up 7]
        * start: [7,1], end: [7,1.6]
        * start: [7,3.4], end: [7,5]
        * start: [7,6], end: [7,7.6]
        * start: [6.4,4], end: [10,4]
        * start: [6.4,7], end: [10,7]
        * start: [1,fix-dn 1], end: [1,fix-up 10]
        * start: [fix-dn(1),10], end: [fix-up(10), 10]
        * start: [fix-dn(10),9.8], end: [11,9.8]
        * start: [fix-dn(10),7.2], end: [11,7.2]
        * start: [7,9.4], end: [7,10]
    watered:
      floor_col: <[turquoise white]>
      floors:
        [[1,1],[10,1],[10,10],[4,10],[4,7],[1,7]]
        [[0,7],[4,7],[4,11],[1,11],[1,10],[0,10]]
    #
    #
    #
    #
  tiles:
    [
      * type: \hall
      * type: \watered
    ]
    [
      #
      #
    ]
    [
      #
      #
    ]

use context essentials2021
include color

#bakgrunn 
bakgrunn=rectangle(400, 400, "solid", white) 

#blått cylinder 
rect = rectangle(40, 140, "solid", color(0, 0, 210, 1)) 
tubetop = overlay-xy(ellipse(40, 24, "solid", color(0, 0, 153, 1)), 0, 12, rect) 
tubebot = overlay-xy(ellipse(40, 24, "solid", color(0, 0, 210, 1)), 0, -140, tubetop) 
tube3d = overlay-xy(rectangle(5, 120, 0.2, white), -10, -30, tubebot) 

#skyggen til cylinder
rects = rectangle(40, 140, "solid", gray)
tubetops = overlay-xy(ellipse(40, 24, "solid", gray), 0, 12, rects) 
tubebots = overlay-xy(ellipse(40, 24, "solid", gray), 0, -140, tubetops) 
shades = overlay-xy(scale-xy(1, 1/2, (rotate(-13 ,tubebots))), 0, -78 ,tubebots)
  
#cylinder bilde
cylfill = underlay-xy(shades, 0, 0, tube3d) 
  
  
tri = triangle(80, "solid", color(153, 0, 0, 1))
del = overlay-xy(rotate(60, triangle(80, "solid", color(224, 0, 0, 1))), -39, 0, tri)
side = overlay-xy(triangle(80, "solid", color(224, 0, 0, 1)), -78, 0, del)

mid = overlay-xy(scale-xy(1, 1, flip-vertical((rotate(90, side)))), -120, -60, cylfill)

#lager skyggen 
tris = triangle(80, "solid", gray)
dels = overlay-xy(rotate(60, triangle(80, "solid", gray)), -39, 0, tris)
sides = overlay-xy(triangle(80, "solid", gray), -78, 0, dels)
skygge = overlay-xy(scale-xy(1, 1/2, (rotate(-25, sides))), 0, -47 ,sides)

trifill = underlay-xy(rotate(90, skygge), -120, -60, mid)

Image = overlay-xy(cylfill, -150, -100, bakgrunn) 
Image
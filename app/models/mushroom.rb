class Mushroom < ApplicationRecord
  # edible=e, poisonous=p
  enum eadible: { eadible: 0, poisnous: 1 }
  # bruises=t,no=f
  enum bruiser: { bruises: 0, no: 1 }
  # bell=b,conical=c,convex=x,flat=f,knobbed=k,sunken=s
  enum cap_shape: { bell: 0, conical: 1, convex: 2, flat: 3, knobbed: 4, sunken: 5 }
  # brown=n,buff=b,cinnamon=c,gray=g,green=r,pink=p,purple=u,red=e,white=w,yellow=y
  enum cap_color: { brown: 0, buff: 1, cinnamon: 2, gray: 3, green: 4, pink: 5, purple: 6,
                    red: 7, white: 8, yellow: 9 }
  # fibrous=f,grooves=g,scaly=y,smooth=s
  enum cap_surface: { fibrous: 0, grooves: 1, scaly: 2, smooth: 3 }
end

path(fresno,omaha).
path(fresno,boston).
path(fresno,seattle).
path(seattle,dallas).
path(seattle,omaha).
path(dallas,seattle).
path(dallas,albany).
path(albany,dallas).
path(omaha,albany).
path(omaha,atlanta).
path(atlanta,boston).
path(atlanta,dallas).
path(atlanta,albany).

flight(Start,End):- path(Start,End).
flight(Start,End):- path(Start,End),flight(Start,End).

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#user = User.create(name: "Michael Bofron", email: "super@gmail.com")


#create the course

#course = Course.create(name: "TPC BigTest", sub_course_name: "test_course", hole_count: 18)

#user creates a round

#round = Round.create(course_id: course.id, user_id: user.id, score: nil, start_time: DateTime.now, end_time: DateTime.now)

#hole_count = 1

#18.times do 
    #hole = Hole.create(course_id: course.id, number: hole_count, par: rand(3..5), mens_handicap: rand(13..19), womens_handicap: rand(25..31))
    #PinLocation.create(location_number: rand(1..7), hole_id: hole.id)
    #Tee.create(name: "yellow", hole_id: hole.id, rating: 71.8, slope: 5, distance: rand(112..170))
    #Tee.create(name: "white", hole_id: hole.id, rating: 71.8, slope: 5, distance: rand(171..250))
    #Tee.create(name: "blue", hole_id: hole.id, rating: 71.8, slope: 5, distance: rand(251..400))
    #hole_count += 1
#end


##user plays the round, scoring from 3 to 6 strokes on each hole randomly

#shot_count = 1

#18.times do
    #number = 1
    #rand(3..6).times do
        #shot = Shot.create(round_id: round.id, shot_number: number, hole_id: shot_count, user_id: user.id, club_selection: ["driver", "wedge", "iron", "hybrid"][rand(0..3)], latitude: 54.412020987654722, longitude: 120.839287483748932)
       # puts shot.id
        #number += 1
   # end
    #HoleScore.create(user_id: user.id, hole_id: shot_count, score: number - 1, start_time: DateTime.now, end_time: DateTime.now)
    #shot_count += 1
#end
#
#final_score = 0

#user.hole_scores.each do |hole_score|
#    final_score += hole_score.score

#end

#round.update_attribute(:score, Shot.all.count)

#cinnabar course

canyon = Course.create(name: "Cinnabar Hills (Canyon)", sub_course_name: "Canyon", hole_count: 9)

tees = [
    "Hawk",
    "Cinnabar",
    "Quicksilver",
    "Oak",
    "Hawk",
    "Cinnabar",
    "Quicksilver",
    "Oak",
    "Hawk",
    "Cinnabar",
    "Quicksilver",
    "Oak",
    "Hawk",
    "Cinnabar",
    "Quicksilver",
    "Oak",
    "Hawk",
    "Cinnabar",
    "Quicksilver",
    "Oak",
    "Hawk",
    "Cinnabar",
    "Quicksilver",
    "Oak",
    "Hawk",
    "Cinnabar",
    "Quicksilver",
    "Oak",
    "Hawk",
    "Cinnabar",
    "Quicksilver",
    "Oak",
    "Hawk",
    "Cinnabar",
    "Quicksilver",
    "Oak"
]

canyon_distance = [
    390,
    371,
    339,
    289,
    400,
    381,
    339,
    319,
    307,
    290,
    274,
    260,
    356,
    345,
    279,
    251,
    149,
    131,
    113,
    91,
    508,
    488,
    476,
    410,
    351,
    341,
    278,
    206,
    222,
    209,
    159,
    125,
    555,
    539,
    531,
    453
]

canyon_men = [
    7,
    9,
    13,
    15,
    17,
    1,
    11,
    3,
    5
]

canyon_women = [
    13,
    5,
    3,
    15,
    17,
    1,
    9,
    11,
    7
]

canyon_par = [
    4,
    4,
    4,
    4,
    3,
    5,
    4,
    3,
    5
]

ratings = [
    73,
    71.3,
    68.7,
    65.5,
    73,
    71.3,
    68.7,
    65.5,
    73,
    71.3,
    68.7,
    65.5,
    73,
    71.3,
    68.7,
    65.5,
    73,
    71.3,
    68.7,
    65.5,
    73,
    71.3,
    68.7,
    65.5,
    73,
    71.3,
    68.7,
    65.5,
    73,
    71.3,
    68.7,
    65.5,
    73,
    71.3,
    68.7,
    65.5
]

slopes = [
    142,
    139,
    128,
    113,
    142,
    139,
    128,
    113,
    142,
    139,
    128,
    113,
    142,
    139,
    128,
    113,
    142,
    139,
    128,
    113,
    142,
    139,
    128,
    113,
    142,
    139,
    128,
    113,
    142,
    139,
    128,
    113,
    142,
    139,
    128,
    113
]

canyon_count = 0

9.times do 
    canyon_hole = Hole.create(course_id: canyon.id, number: canyon_count + 1, par: canyon_par[canyon_count], hole_name: nil, mens_handicap: canyon_men[canyon_count], womens_handicap: canyon_women[canyon_count])
    Tee.create(name: tees[canyon_count], hole_id: canyon_hole.id, rating: ratings[canyon_count], slope: slopes[canyon_count], distance: canyon_distance[canyon_count])
    Tee.create(name: tees[canyon_count + 1], hole_id: canyon_hole.id, rating: ratings[canyon_count + 1], slope: slopes[canyon_count + 1], distance: canyon_distance[canyon_count + 1])
    Tee.create(name: tees[canyon_count + 2], hole_id: canyon_hole.id, rating: ratings[canyon_count + 2], slope: slopes[canyon_count + 2], distance: canyon_distance[canyon_count + 2])
    canyon_count += 1
end

lake = Course.create(name: "Cinnabar Hills (Lake)", sub_course_name: "Lake", hole_count: 9)

lake_distance = [
    523,
    498,
    464,
    409,
    175,
    168,
    147,
    124,
    445,
    427,
    367,
    329,
    382,
    351,
    310,
    260,
    385,
    360,
    320,
    297,
    387,
    363,
    315,
    284,
    567,
    535,
    477,
    460,
    172,
    147,
    118,
    79,
    439,
    393,
    375,
    313
]

lake_par = [
    5,
    3,
    4,
    4,
    4,
    4,
    5,
    3,
    4

]

lake_men = [
    10,
    16,
    2,
    4,
    18,
    14,
    6,
    8,
    12
]

lake_women = [
    4,
    14,
    8,
    6,
    16,
    12,
    2,
    18,
    10
]


lake_count = 0

9.times do 
    lake_hole = Hole.create(course_id: lake.id, number: lake_count + 1, par: lake_par[lake_count], hole_name: nil, mens_handicap: lake_men[lake_count], womens_handicap: lake_women[lake_count])
    Tee.create(name: tees[lake_count], hole_id: lake_hole.id, rating: ratings[lake_count], slope: slopes[lake_count], distance: lake_distance[lake_count])
    Tee.create(name: tees[lake_count + 1], hole_id: lake_hole.id, rating: ratings[lake_count + 1], slope: slopes[lake_count + 1], distance: lake_distance[lake_count + 1])
    Tee.create(name: tees[lake_count + 2], hole_id: lake_hole.id, rating: ratings[lake_count + 2], slope: slopes[lake_count + 2], distance: lake_distance[lake_count + 2])
    lake_count += 1
end
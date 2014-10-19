# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

News.delete_all
News.create(order: 1, url: 'bureaux-l'      , title: 'Bureaux L, bureaux pour des agriculteurs à Liposthey (Landes)'                    , summary: 'Prix de la Première Oeuvre Le Moniteur 2011 - Vanessa Larrère Architecte')
News.create(order: 2, url: 'creche-amouroux', title: 'Crèche Amouroux, concours d\'un centre petite enfance et multi-accueil à Toulouse', summary: 'Projet Lauréat')
News.create(order: 3, url: 'logements-g'    , title: 'Logements G, réhabilitation & extension à Labouheyre (Landes)'                    , summary: 'Projet Livré')
News.create(order: 4, url: 'maison-du-golf' , title: 'Maison du golf, Biscarrosse (Landes)'                                             , summary: 'Permis Accepté')

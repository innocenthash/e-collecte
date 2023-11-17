class ListesCategorie {
  static List<Map<String, dynamic>> listesCategorie = [
    {
      'nom_categorie' : ['Voamaina','legumes','fruits'] ,
      'ville' :[
        {
             'nom_ville': "Toliara" ,
             'coordonnees' : {
                     'long': -23.342421308596794, 
                     "lat": 43.66415153991897
             }
        },
      {
             'nom_ville': "Antananarivo" ,
             'coordonnees' : {
                     'long': -18.913185600485587,
                     "lat":47.5124824015436    , 
             }
      } 
      ]
    },
    {
      'nom_categorie' : ['Voamaina','legumes','fruits',"epice"] ,
      'ville' :['Toliara', "fianarantsoa","Toamasiana","Diego"]
    },
    {
      'nom_categorie' : ['Voamaina','legumes'] ,
      'ville' :['Toliara', "fianarantsoa","Ambositra"]
    },
  ];
}

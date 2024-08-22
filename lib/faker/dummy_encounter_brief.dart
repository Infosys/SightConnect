class Faker {
  static final dummyEncounterBrief = {
    "content": List.generate(
      5,
      (i) => {
        "encounterId": "$i",
        "timelineName": "Timeline $i",
        "timelineVersion": "Version $i",
        "activeStages": ["DEATH_INTIMATION"],
        "donorBrief": {"id": i, "name": "Donor $i", "contact": "905232919$i"},
        "intimateDate": "2024-08-17T07:29:40.409Z",
        "performerId": i,
        "deathDate": "2024-08-17T07:29:40.409Z",
        "bodyLocation": {
          "addressLine1": "Address $i",
          "addressLine2": "Address $i",
          "street": "Street $i",
          "city": "City $i",
          "state": "State $i",
          "zipCode": "ZipCode $i",
          "country": "Country $i",
          "landmark": "Landmark $i",
          "village": "Village $i",
          "district": "District $i",
          "latitude": "Latitude $i",
          "longitude": "Longitude $i",
          "direction": "Direction $i"
        },
        "organExtracted": ["Organ $i"],
        "lastModifiedDate": "2024-08-17T07:29:40.409Z"
      },
    ),
    "totalElements": 0,
    "totalPages": 0,
    "size": 0,
    "number": 0,
    "numberOfElements": 0,
    "empty": true,
    "first": true,
    "last": true
  };
}

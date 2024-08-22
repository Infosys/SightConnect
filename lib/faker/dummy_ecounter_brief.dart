final dummyEncounterBrief = [
  for (var i = 0; i < 5; i++)
    {
      "encounterId": "Encounter$i",
      "timelineName": "Timeline$i",
      "timelineVersion": "v$i",
      "activeStages": ["DEATH_INTIMATION"],
      "donorBrief": {"id": i, "name": "Donor$i", "contact": "905232919$i"},
      "intimateDate": "2024-08-17T07:29:40.409Z",
      "performerId": i,
      "deathDate": "2024-08-17T07:29:40.409Z",
      "bodyLocation": {
        "addressLine1": "Address$i",
        "addressLine2": "Address$i",
        "street": "Street$i",
        "city": "City$i",
        "state": "State$i",
        "zipCode": "Zip$i",
        "country": "Country$i",
        "landmark": "Landmark$i",
        "village": "Village$i",
        "district": "District$i",
        "latitude": "Lat$i",
        "longitude": "Long$i",
        "direction": "Direction$i"
      },
      "organExtracted": ["Organ$i"],
      "lastModifiedDate": "2024-08-17T07:29:40.409Z"
    },
];

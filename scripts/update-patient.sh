curl --include --request PATCH http://localhost:4741/patients/2 \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Smiggy Pop",
      "born_on": "03-02-1983",
      "diagnosis": "Too many drugs and wild nights"
    }
  }'

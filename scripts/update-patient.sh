curl --include --request PATCH http://localhost:4741/patients/5 \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Chris",
      "sickness": "November",
      "age": 52
    }
  }'

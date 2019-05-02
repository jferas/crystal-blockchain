DATA=$1
generate_post_data()
{
  cat <<EOF
{
"data": "$DATA"
}
EOF
}
curl --header "Content-Type: application/json" --request POST --data "$(generate_post_data)" http://localhost:3000/mine-block

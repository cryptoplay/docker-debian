@test "ci-build-url label is present" {
  run docker inspect \
      -f '{{ index .Config.Labels "io.github.cryptoplay.ci-build-url" }}' \
      cryptoplay/debian
  [[ ${output} =~ circleci.com ]]
}

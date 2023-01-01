curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ghs_rHlwdaUN4fmNxdABPztYZjkwoUrJWI4E293p"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/QuanZhang-William/my-golang-build/check-runs \
  -d '{"name":"build-test","head_sha":"d314269603adf302b4b3b50d9f455b47517d9db5","status":"completed", "conclusion": "success", "started_at":"2023-05-04T01:14:52Z","output":{"title":"Mighty Readme report","summary":"","text":""}}'
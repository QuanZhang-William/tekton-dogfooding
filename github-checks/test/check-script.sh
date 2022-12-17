curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ghs_hYmZRBWP02iN1NdUi6FNudETTec6ho26dgiV"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/QuanZhang-William/ah-test-catalog-git-versioning/check-runs \
  -d '{"name":"tekton-ci","head_sha":"d737eff2f5963f15e6b18738bf449819d6537a74","status":"completed", "conclusion": "success", "started_at":"2023-05-04T01:14:52Z","output":{"title":"Mighty Readme report","summary":"","text":""}}'
curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ghs_nTcFCXLX8vDw9hyeubXrht0Z5SSqhT18E3LP"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/QuanZhang-William/ah-test-catalog-git-versioning/statuses/d737eff2f5963f15e6b18738bf449819d6537a74 \
  -d '{"state":"failure","target_url":"https://example.com/build/status","description":"status description","context":"continuous-integration/tekton"}'
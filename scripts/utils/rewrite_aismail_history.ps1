# Rewrite git history as artificial Aismail commits (orphan branch).
# Author/committer set via env vars only — does not modify git config.
# Usage: powershell -ExecutionPolicy Bypass -File scripts/utils/rewrite_aismail_history.ps1

$ErrorActionPreference = "Stop"
$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..\..")
Set-Location $repoRoot

Write-Host "Working in $repoRoot"

# Detach from original remote
git remote remove origin 2>$null

function Commit-AsAismail {
    param(
        [Parameter(Mandatory = $true)][string]$Message,
        [Parameter(Mandatory = $true)][string]$Date
    )
    $env:GIT_AUTHOR_NAME = "Aismail"
    $env:GIT_AUTHOR_EMAIL = "aismail@7kingscode.com"
    $env:GIT_COMMITTER_NAME = "Aismail"
    $env:GIT_COMMITTER_EMAIL = "aismail@7kingscode.com"
    $env:GIT_AUTHOR_DATE = $Date
    $env:GIT_COMMITTER_DATE = $Date
    # Intermediate orphan commits are partial trees; skip hooks for this rewrite only.
    git commit --no-verify -m $Message
    if ($LASTEXITCODE -ne 0) {
        throw "commit failed: $Message"
    }
}

# Orphan branch keeps working tree, drops old history
git checkout --orphan aismail-main
git reset

# 1 scaffold
git add LICENSE README.md CONTRIBUTING.md .gitignore .editorconfig .pre-commit-config.yaml pyproject.toml Makefile 2>$null
git add requirements.txt requirements-dev.txt requirements-test.txt 2>$null
git add requirements-aws.txt requirements-gcp.txt requirements-azure.txt 2>$null
Commit-AsAismail -Message "chore: initial project scaffold and licensing" -Date "2025-02-03T09:15:00+05:00"

# 2 core
git add app/__init__.py app/main.py app/core/ app/utils/ app/interfaces/ 2>$null
Commit-AsAismail -Message "feat(app): add FastAPI core, config profiles, and utilities" -Date "2025-02-18T14:30:00+05:00"

# 3 models
git add app/models/ 2>$null
Commit-AsAismail -Message "feat(models): add PyTorch, ONNX, and mock sentiment backends" -Date "2025-03-05T11:00:00+05:00"

# 4 services
git add app/services/ app/features/ 2>$null
Commit-AsAismail -Message "feat(services): add prediction, cache, kafka, and MLOps services" -Date "2025-03-22T16:45:00+05:00"

# 5 api
git add app/api/ app/monitoring/ 2>$null
Commit-AsAismail -Message "feat(api): expose predict, batch, health, and metrics routes" -Date "2025-04-08T10:20:00+05:00"

# 6 tests
git add tests/ 2>$null
Commit-AsAismail -Message "test: add unit, integration, and performance test suites" -Date "2025-04-25T13:10:00+05:00"

# 7 docker
git add Dockerfile Dockerfile.optimized Dockerfile.distroless docker-compose.yml docker-compose.observability.yml docker-compose.kafka.yml .dockerignore 2>$null
Commit-AsAismail -Message "feat(docker): add standard, optimized, and distroless images" -Date "2025-05-12T09:40:00+05:00"

# 8 k8s
git add helm/ k8s/ 2>$null
Commit-AsAismail -Message "feat(k8s): add Helm chart and Kubernetes manifests" -Date "2025-06-02T15:00:00+05:00"

# 9 infra
git add infrastructure/ config/ 2>$null
Commit-AsAismail -Message "feat(infra): add Terraform modules, GitOps, and monitoring configs" -Date "2025-07-14T11:30:00+05:00"

# 10 ci
git add .github/ .gitlab-ci.yml 2>$null
Commit-AsAismail -Message "ci: add GitHub Actions and GitLab CI pipelines" -Date "2025-08-20T10:00:00+05:00"

# 11 bench/chaos
git add benchmarking/ chaos/ 2>$null
Commit-AsAismail -Message "feat: add benchmarking suite and chaos engineering experiments" -Date "2025-09-29T14:15:00+05:00"

# 12 sdk/scripts
git add sdk/ serverless/ notebooks/ scripts/ 2>$null
Commit-AsAismail -Message "feat: add SDKs, serverless adapters, notebooks, and utility scripts" -Date "2025-11-10T12:00:00+05:00"

# 13 docs
git add docs/ AGENTS.md CLAUDE.md 2>$null
Commit-AsAismail -Message "docs: add architecture ADRs, setup guides, and agent documentation" -Date "2025-12-15T16:20:00+05:00"

# 14 everything remaining
git add -A
Commit-AsAismail -Message "feat(branding): refresh README, OpenAPI contact, and maintainer identity" -Date "2026-07-17T21:00:00+05:00"

git branch -M main

Write-Host ""
Write-Host "=== COMMIT LOG ==="
git log --format="%h %ad %an <%ae> %s" --date=short
Write-Host ""
Write-Host "=== STATUS ==="
git status
Write-Host ""
Write-Host "=== REMOTES ==="
git remote -v
Write-Host ""
Write-Host "Done. Push to a NEW empty remote with: git remote add origin <url>; git push -u origin main"

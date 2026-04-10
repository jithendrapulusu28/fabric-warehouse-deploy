# Fabric Warehouse DEV -> UAT Deployment Report

## Task
Set up and validate a complete schema deployment process from DEV Fabric workspace `fabtestv2` to UAT workspace `fabtestxplore` using GitHub-based CI/CD.

Target outcome:
- Track warehouse changes in Git.
- Promote changes through branches (`develop` -> `main`) using PR.
- Deploy approved changes to UAT automatically using GitHub Actions.
- Verify only intended schema differences are applied.

## How We Achieved It
1. Connected DEV workspace (`fabtestv2`) to GitHub `develop` branch.
2. Used Fabric Source Control to commit warehouse changes from workspace to GitHub.
3. Pulled `develop` branch updates into local VS Code repository.
4. Promoted changes via PR from `develop` to `main`.
5. Created deployment workflow at `.github/workflows/deploy-uat.yml`.
6. Configured workflow to:
- Restore and build SQL project (`datawarehouse_test.Warehouse/datawarehouse_test.sqlproj`)
- Generate DACPAC
- Generate preview script (`sqlpackage /Action:Script`)
- Publish to UAT with `sqlpackage /Action:Publish`
7. Added deployment safety settings:
- `DropObjectsNotInSource=False`
- `BlockOnPossibleDataLoss=True`
8. Validated deployment output in UAT warehouse and checked generated preview SQL before publish.

## Issues Faced
1. Git authentication and push failures.
2. Workflow file not detected in GitHub Actions.
3. Build failure due old SQL SDK version (`Microsoft.Build.Sql/0.1.19-preview`).
4. Build failure due unresolved object references in views (`vw_CustomerID`).
5. Fabric sync conflicts between workspace and branch changes.
6. Confusion around branch/repo locations and workflow placement.

## How Each Issue Was Resolved
1. Git auth failures:
- Updated PAT permissions and refreshed local credentials.

2. Workflow not visible:
- Moved workflow to correct repo root path: `.github/workflows/deploy-uat.yml`
- Corrected naming mistakes.

3. SQL SDK build failure:
- Updated SQL project SDK to:
  - `<Sdk Name="Microsoft.Build.Sql" Version="2.1.0" />`

4. Unresolved view references:
- Removed/excluded problematic views so build could complete.

5. Fabric sync conflicts:
- Used Fabric `Resolve conflicts`, selected correct version, then recommitted.

6. Branch/repo confusion:
- Standardized process:
  - Fabric DEV -> GitHub `develop`
  - PR `develop` -> `main`
  - GitHub Action deploy from `main`

## Final Result
- End-to-end DEV -> UAT schema deployment is working.
- Deployment preview artifact confirms exact SQL diff before publish.
- Example validated change:
  - `ALTER TABLE [dbo].[Orders] ADD [OrderChannel] VARCHAR(30) NULL;`
- No-diff runs correctly produce no-op script (`Update complete` only).

## Key Notes
1. DACPAC deploys schema only, not data.
2. Data movement must be handled separately (pipeline/ETL).
3. Destructive changes (for example drop column) are blocked when `BlockOnPossibleDataLoss=True`.

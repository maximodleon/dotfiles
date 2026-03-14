## Description
Analyzes staged changes in a git repository and generates a standardized commit message following the [Conventional Commits 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/) specification.

## Trigger
Use this skill when the user asks to "commit," "save changes," or "generate a commit message" for their staged work.

## Specification Rules
1. **Format**: `<type>(<scope>): <description>`
2. **Types**:
   - `feat`: A new feature.
   - `fix`: A bug fix.
   - `docs`: Documentation changes only.
   - `style`: Changes that do not affect the meaning of the code (formatting, missing semi-colons, etc).
   - `refactor`: A code change that neither fixes a bug nor adds a feature.
   - `perf`: A code change that improves performance.
   - `test`: Adding missing tests or correcting existing tests.
   - `build`: Changes that affect the build system or external dependencies (e.g., Gradle, Maven, NPM).
   - `ci`: Changes to CI configuration files and scripts (e.g., GitHub Actions, Jenkins).
   - `chore`: Other changes that don't modify src or test files.
   - `revert`: Reverts a previous commit.
3. **Scope**: Must be a noun describing a section of the codebase.
   - **Kotlin Multiplatform (KMP) Context**: Use module names or targets (e.g., `shared`, `composeApp`, `iosMain`, `androidMain`, `network`, `db`).
   - **General Context**: Use logical layers (e.g., `api`, `ui`, `auth`, `config`).
4. **Subject (Description)**:
   - Use the imperative mood ("add" not "added" or "adds").
   - Do not capitalize the first letter.
   - No period (.) at the end.
5. **Breaking Changes**: If the change breaks backward compatibility, add a `!` after the type/scope and include a `BREAKING CHANGE:` footer.

## Execution Workflow
1. Run `git diff --cached` to inspect changes.
2. Determine the primary **type** and **scope**.
3. Draft a concise subject line (under 50 characters).
4. If the changes are complex, draft a **body** explaining the "why" (not the "how").
5. Output the draft to the user and ask: *"Would you like me to commit with this message?"*

## Examples

### Kotlin Multiplatform (KMP)
- `feat(shared/data): add SQLDelight driver for iOS`
- `fix(androidMain): resolve crash in Bluetooth permissions`
- `build(deps): bump compose-multiplatform to 1.6.0`

### Generic
- `docs(readme): update installation instructions`
- `refactor(api): extract user validation to middleware`
- `feat(auth)!: replace JWT with OAuth2 provider` (Breaking Change)

## Verification
Before suggesting the commit, check:
- Is the type one of the allowed keywords?
- Is the scope in parentheses?
- Is there a colon and a space after the scope?
- Is the message in the imperative mood?

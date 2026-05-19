```markdown
# cvector Development Patterns

> Auto-generated skill from repository analysis

## Overview
This skill teaches you the core development patterns and conventions used in the `cvector` TypeScript codebase. You'll learn about file naming, import/export styles, commit message habits, and how to write and run tests. This guide is ideal for contributors aiming for consistency and maintainability in the project.

## Coding Conventions

### File Naming
- **Pattern:** PascalCase  
  **Example:**  
  ```
  VectorUtils.ts
  MatrixOperations.ts
  ```

### Import Style
- **Pattern:** Relative imports  
  **Example:**  
  ```typescript
  import { addVectors } from './VectorUtils';
  ```

### Export Style
- **Pattern:** Named exports  
  **Example:**  
  ```typescript
  export function addVectors(a: number[], b: number[]): number[] { ... }
  ```

### Commit Messages
- **Pattern:** Freeform, no strict prefixes  
  - Average length: ~64 characters  
  **Example:**  
  ```
  Add normalization function for vector arrays
  Fix bug in dot product calculation
  ```

## Workflows

### Adding a New Utility Function
**Trigger:** When you need to introduce a new vector or matrix utility  
**Command:** `/add-utility`

1. Create a new file using PascalCase, e.g., `NewUtility.ts`.
2. Implement your function using named exports.
3. Import your function where needed using a relative path.
4. Write a corresponding test file named `NewUtility.test.ts`.
5. Commit your changes with a clear, descriptive message.

### Running Tests
**Trigger:** When you want to verify code correctness  
**Command:** `/run-tests`

1. Ensure all test files follow the `*.test.*` naming pattern.
2. Use the project's test runner (framework is unknown; check project docs or package.json).
3. Run the test command (e.g., `npm test` or `yarn test`).
4. Review the output for passing/failing tests.

### Refactoring Existing Code
**Trigger:** When improving or updating existing utilities  
**Command:** `/refactor`

1. Locate the file to refactor (PascalCase).
2. Update the implementation, maintaining named exports.
3. Adjust relative imports in other files if necessary.
4. Update or add tests to reflect changes.
5. Commit with a descriptive message.

## Testing Patterns

- **Test File Naming:**  
  Files containing tests are named using the pattern `*.test.*` (e.g., `VectorUtils.test.ts`).
- **Testing Framework:**  
  Not explicitly detected. Check `package.json` or documentation for specifics.
- **Test Structure:**  
  Each utility function should have corresponding tests in a dedicated test file.

**Example:**
```typescript
// VectorUtils.test.ts
import { addVectors } from './VectorUtils';

test('addVectors adds two vectors', () => {
  expect(addVectors([1, 2], [3, 4])).toEqual([4, 6]);
});
```

## Commands
| Command        | Purpose                                              |
|----------------|------------------------------------------------------|
| /add-utility   | Scaffold and add a new utility function              |
| /run-tests     | Run all test suites in the repository                |
| /refactor      | Refactor existing code while maintaining conventions |
```

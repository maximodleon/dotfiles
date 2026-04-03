---
name: uikit-ui-implementation
description: Build native UIKit interfaces using Apple Human Interface
  Guidelines, accessibility best practices, Auto Layout, semantic styling, and
  SF Symbols
license: MIT
compatibility: opencode
metadata:
  audience: ios-engineers
  platform: apple
  framework: uikit
  mode: implementation
---

## What I do

- Build or refactor UIKit screens that feel native on iPhone and iPad
- Use Apple Human Interface Guidelines as the default design standard
- Prefer standard UIKit controls, navigation, and presentation patterns
- Use Auto Layout, semantic colors, preferred text styles, and accessibility
  APIs
- Choose appropriate SF Symbols for actions, navigation, and status
- Consider loading, empty, error, disabled, and populated states

## When to use me

Use this when the task is to design, implement, or refactor a UIKit screen,
view controller, or reusable UIKit component.

Examples:
- Build a settings screen in UIKit
- Refactor a UIKit form to use native patterns
- Add accessibility and SF Symbols to an existing view controller
- Implement a UIKit detail screen using Auto Layout and semantic styling

Ask clarifying questions if the minimum iOS version, device support, or existing
architecture is unclear.

## Rules I follow

I use these Apple references as the standard:
- Human Interface Guidelines:
  https://developer.apple.com/design/human-interface-guidelines
- SF Symbols:
  https://developer.apple.com/design/human-interface-guidelines/sf-symbols

I follow these implementation rules:
- Prefer standard UIKit controls over custom UI where possible
- Respect the existing app architecture and established UIKit patterns
- Keep view controllers focused and avoid making them overly large
- Use Auto Layout instead of fragile frame-based layouts unless the codebase has
  a clear reason not to
- Prefer `UIStackView` for straightforward composition
- Use `UINavigationController` and `UITabBarController` appropriately
- Prefer modern UIKit APIs when they fit the codebase, including diffable data
  sources and configuration APIs
- Use preferred text styles and semantic colors
- Support Dynamic Type, VoiceOver, Light Mode, and Dark Mode
- Respect safe areas and readable layout margins
- Target comfortable tap areas, ideally at least 44x44 points
- Never rely on color alone to communicate meaning
- Pair icons with text when icon meaning may be ambiguous
- Use SF Symbols via `UIImage(systemName: "...")`
- Prefer symbols with clear semantic meaning over decorative choices
- Check symbol availability when the deployment target matters

## Output expectations

When I complete a task, I should:
- State that UIKit was chosen and why
- Briefly explain the navigation and view structure
- Mention accessibility considerations
- Mention the SF Symbols used and why they fit
- Call out assumptions such as:
  - minimum iOS version
  - iPhone-only or iPad support
  - existing architecture
  - existing design system

## Ask before proceeding when

Ask concise questions if needed:
- What is the minimum iOS deployment target?
- Is this screen part of an existing navigation or tab flow?
- Is there an existing design system or component library?
- Should I match older UIKit patterns or use modern APIs where possible?
- Should the UI support iPad as well as iPhone?
- Are there existing icon choices to stay consistent with?

## Do not do

- Do not replace standard UIKit controls with custom ones without a clear need
- Do not hard-code layouts that break under Dynamic Type
- Do not overload view controllers with unrelated responsibilities
- Do not ignore accessibility, semantic styling, or safe area behavior
- Do not choose SF Symbols based only on appearance if the meaning is unclear

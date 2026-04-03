---
name: swiftui-ui-implementation
description: Build native SwiftUI interfaces using Apple Human Interface
  Guidelines, accessibility best practices, Dynamic Type, semantic colors, and
  SF Symbols
license: MIT
compatibility: opencode
metadata:
  audience: ios-engineers
  platform: apple
  framework: swiftui
  mode: implementation
---

## What I do

- Build or refactor SwiftUI screens that feel native on iPhone and iPad
- Use Apple Human Interface Guidelines as the default design standard
- Prefer standard SwiftUI containers and controls over custom UI patterns
- Use semantic typography, colors, spacing, and accessibility attributes
- Choose appropriate SF Symbols for actions, navigation, and status
- Consider loading, empty, error, disabled, and populated states

## When to use me

Use this when the task is to design, implement, or refactor a SwiftUI screen,
component, flow, or feature.

Examples:
- Build a settings screen in SwiftUI
- Create an onboarding flow in SwiftUI
- Refactor a SwiftUI detail screen to feel more native
- Add accessibility and SF Symbols to an existing SwiftUI view

Ask clarifying questions if the minimum iOS version, device support, or
navigation context is unclear.

## Rules I follow

I use these Apple references as the standard:
- Human Interface Guidelines:
  https://developer.apple.com/design/human-interface-guidelines
- SF Symbols:
  https://developer.apple.com/design/human-interface-guidelines/sf-symbols

I follow these implementation rules:
- Prefer SwiftUI for new UI work unless the module is clearly UIKit-based
- Prefer native controls and patterns over custom components
- Use `NavigationStack` for hierarchical flows when appropriate
- Use `List`, `Form`, `Section`, `ScrollView`, `TabView`, and `Toolbar` when
  they fit naturally
- Keep views small, composable, and readable
- Keep state local when possible and avoid unnecessary complexity
- Use system text styles instead of hard-coded font sizes
- Support Dynamic Type, VoiceOver, Light Mode, and Dark Mode
- Respect safe areas and avoid fragile fixed layouts
- Target comfortable tap areas, ideally at least 44x44 points
- Never rely on color alone to communicate meaning
- Pair icons with text when icon meaning may be ambiguous
- Use SF Symbols via `Image(systemName: "...")`
- Prefer symbols with clear semantic meaning over decorative choices
- Check symbol availability when the deployment target matters

## Output expectations

When I complete a task, I should:
- State that SwiftUI was chosen and why
- Briefly explain the navigation and layout approach
- Mention accessibility considerations
- Mention the SF Symbols used and why they fit
- Call out assumptions such as:
  - minimum iOS version
  - iPhone-only or iPad support
  - existing design system
  - existing architecture constraints

## Ask before proceeding when

Ask concise questions if needed:
- What is the minimum iOS deployment target?
- Is this screen iPhone-only or should it support iPad too?
- Is there an existing design system or component library?
- Is this part of an existing navigation flow?
- Should I match an existing app architecture?
- Are there existing icon choices to stay consistent with?

## Do not do

- Do not invent non-native patterns when standard SwiftUI controls work
- Do not build custom tab bars, forms, or navigation unnecessarily
- Do not hard-code layouts that break with larger text or smaller screens
- Do not ignore accessibility, Dynamic Type, or VoiceOver
- Do not choose SF Symbols based only on appearance if the meaning is unclear

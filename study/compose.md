# Jetpack Compose Guide

## Core Concepts
- **Composable**: A function that describes UI. `@Composable fun Text(text: String)`.
- **Composition**: The UI tree built by Compose.

## Modifiers
- **Modifier**: Chains to customize composables. `Modifier.fillMaxWidth().padding(8.dp)`.

## State Management
- **State**: Mutable data. `val count = remember { mutableStateOf(0) }`.
- **Recomposition**: UI update when state changes.

## Layouts
- **Column**: Vertical layout. `Column { Text("Item 1"); Text("Item 2") }`.

---
Old Version
# Jetpack Compose Guide 

**Jetpack Compose** is the new UI Toolkit. It is used for Android and Kotlin Multiplatform when needed. It is declarative
- Offers less boierplate code
- It is declarative
- It replaces XML based Views

---

## Composable Function
Special Kotlin functions marked with @Composable and describes part of a UI 
## Recomposition
It's when Compose redraws a piece of UI when data changes, avoiding to redraw the whole screen composables
## State
State holds data and updates its values through the lifecycle to trgger updates in the UI
## remember
## remeberSaveable
## Modifier
## Scaffold
## SideEffect
## LaunchedEffect
## DisposableEffect
## derivedStateOf
## recomposition skipping
## rememberCoroutineScope
## Navigation in Compose
## CompositionLocal
## Custom Composable
## Slot API
## Keys in LazyColumn
## Dialogs in Compose
## Performance in Compose
## Managing state
## Handling TextField
## Preview
## LazyColumn
## produceState
## rememberUpdateState
## snapshotFlow
## remember vs rememberSaveable
## Masonry View in a Lazy Column


---


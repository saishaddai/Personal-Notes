# Jetpack Compose Guide

## C
- **Column**: Vertical layout. `Column { Text("Item 1"); Text("Item 2") }`.
- **Composable**: A function that describes UI. `@Composable fun Text(text: String)`.
- **Composition**: The UI tree built by Compose.
- **CompositionLocal**: A mechanism to pass data implicitly down the composable tree without explicit parameters. Example: `CompositionLocalProvider(LocalContentColor provides Color.Red) { ... }`.
- **Custom Composable**: A user-defined function annotated with @Composable to build reusable UI components. Example: `@Composable fun MyButton(onClick: () -> Unit) { Button(onClick = onClick) { Text("Click") } }`.
  
## D
- **derivedStateOf**: Creates a state that derives its value from other states, recomposing only when the derived value changes. Example: `val total = derivedStateOf { items.sumOf { it.price } }`.
- **Dialogs in Compose**: Modal UI elements like AlertDialog or Dialog for user interactions, such as confirmations or inputs. Example: `AlertDialog(onDismissRequest = {}) { Text("Confirm?") }`.
- **DisposableEffect**: A side effect that runs cleanup code when a composable leaves the composition. Example: `DisposableEffect(key) { onDispose { /* cleanup */ } }`.

## H
- **Handling TextField**: Managing user input in TextField composables, often with state for text and callbacks for changes. Example: `val text = remember { mutableStateOf("") }; TextField(value = text.value, onValueChange = { text.value = it })`.

## K
- **Keys in LazyColumn**: Unique identifiers for items in LazyColumn to optimize recomposition and animations. Example: `LazyColumn { items(items, key = { it.id }) { Item(it) } }`.

## L
- **LaunchedEffect**: Launches a coroutine in the composition lifecycle, useful for async operations. Example: `LaunchedEffect(key) { delay(1000); updateData() }`.
- **LazyColumn**: A composable for efficiently displaying large lists, rendering only visible items. Example: `LazyColumn { items(list) { Text(it) } }`.

## M
- **Managing State**: Handling mutable data in Compose using mutableStateOf, remember, and recomposition triggers. Example: `val count = remember { mutableStateOf(0) }; Button(onClick = { count.value++ }) { Text(count.value.toString()) }`.
- **Modifier**: A chainable object to customize composable appearance and behavior (e.g., size, padding). Example: `Modifier.fillMaxWidth().padding(16.dp)`.

## N
- **Navigation in Compose**: Routing between screens using NavController and NavHost for app navigation. Example: `NavHost(navController, startDestination = "home") { composable("home") { HomeScreen() } }`.

## P
- **Performance in Compose**: Optimizing UI by minimizing recompositions, using keys, and avoiding unnecessary work. Tips: Profile with Layout Inspector; use remember wisely.
- **Preview**: An annotation @Preview to render composables in Android Studio's design view for quick testing. Example: `@Preview @Composable fun MyComposablePreview() { MyComposable() }`.
- **produceState**: Creates state from asynchronous operations, like flows or suspend functions. Example: `val state = produceState(initialValue = 0) { value = fetchData() }`.

## R
- **Recomposition**: UI update when state changes.
- **recomposition skipping**: Compose's optimization to skip recomposing unchanged parts of the UI tree. Achieved via stable keys and avoiding unnecessary state changes.
- **remember**: Caches a value across recompositions within the same composition. Example: `val count = remember { mutableStateOf(0) }`.
- **remember vs rememberSaveable**: remember caches across recompositions but resets on config changes; rememberSaveable persists across config changes (e.g., screen rotation) using SavedStateHandle.
- **rememberCoroutineScope**: Provides a CoroutineScope tied to the composable's lifecycle for launching coroutines. Example: `val scope = rememberCoroutineScope(); scope.launch { /* async work */ }`.
- **rememberSaveable**: Like remember, but saves state across configuration changes. Example: `val text = rememberSaveable { mutableStateOf("") }`.
- **rememberUpdateState**: Captures the latest value of a parameter in an effect, avoiding stale closures. Example: `val currentOnClick by rememberUpdateState(onClick); LaunchedEffect { currentOnClick() }`.

## S
- **Scaffold**: A layout composable providing structure like top bar, bottom bar, and floating action button. Example: `Scaffold(topBar = { TopAppBar(title = { Text("App") }) }) { /* content */ }`.
- **SideEffect**: Runs code after every recomposition, often for non-Compose side effects. Example: `SideEffect { analytics.track("screen_view") }`.
- **Slot API**: A pattern for customizable composables, allowing slots for content (e.g., in Scaffold or custom components). Example: `@Composable fun Card(slot: @Composable () -> Unit) { Column { slot() } }`.
- **snapshotFlow**: Converts state changes into a Flow for reactive operations. Example: `snapshotFlow { state.value }.collect { /* react */ }`.
- **State**: Mutable data. `val count = remember { mutableStateOf(0) }`.





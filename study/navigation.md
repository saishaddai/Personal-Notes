# Navigation 

## Core Components
**NavController**: Manages navigation within a NavHost. It handles commands like navigate(), popBackStack(), and provides access to the current destination.
**NavHost**: A container (usually a FragmentContainerView) that displays destinations from a NavGraph. It acts as the host for navigation.
**NavGraph**: An XML file defining the app's navigation structure, including destinations (fragments or activities) and actions (edges between them).
**Destination**: A screen or endpoint in the NavGraph, such as a fragment. Each has an ID and can include arguments.

---

## Setting Up Navigation
**Add Dependencies**: Include androidx.navigation:navigation-fragment-ktx and androidx.navigation:navigation-ui-ktx in your build.gradle.
**Create NavGraph**: In res/navigation/, add an XML file with <navigation> root, defining destinations and actions.
**Setup in Activity**: In your activity's layout, use <androidx.fragment.app.FragmentContainerView> as NavHost, and in code, initialize NavController with findNavController(view) or Navigation.findNavController(this, R.id.nav_host_fragment).
**Navigate**: Use navController.navigate(R.id.action_or_destination_id) to move between destinations.

---

## Navigation Types
**Actions**: Predefined paths in NavGraph XML, e.g., <action android:id="@+id/action_fragmentA_to_fragmentB" />. Triggered via navigate(actionId).
**Deep Links**: URLs or intents that launch specific destinations. Define in NavGraph with <deepLink android:id="@+id/deepLink" app:uri="yourapp://example" />.
**Back Stack**: Automatically managed; use popBackStack() to go back. Customize with app:popUpTo and app:popUpToInclusive in actions.

---

## Passing Data
**Arguments**: Pass data via NavGraph arguments (e.g., <argument android:name="userId" app:argType="integer" />). Access in fragments with arguments?.getInt("userId").
**Safe Args**: Plugin-generated classes for type-safe argument passing. Add androidx.navigation:navigation-safe-args-generator and use generated classes like FragmentADirections.actionFragmentAToFragmentB(userId).

---

## UI Integration
**BottomNavigationView**: Link to NavController with NavigationUI.setupWithNavController(bottomNav, navController) for automatic item selection and back handling.
**Toolbar/AppBar**: Use NavigationUI.setupActionBarWithNavController(this, navController) for up button and title updates.
**DrawerLayout**: Integrate with NavigationUI.setupWithNavController(navigationView, navController) for drawer navigation.

---

## Advanced Features
**Nested Graphs**: Group related destinations in sub-graphs for modular navigation.
**Global Actions**: Actions available from any destination, like a logout action.
**Conditional Navigation**: Use NavOptions to customize behavior, e.g., navController.navigate(actionId, bundle, NavOptions.Builder().setPopUpTo(R.id.startDestination, true).build()).
**Testing**: Use TestNavHostController for unit testing navigation logic.

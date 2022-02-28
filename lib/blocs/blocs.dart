/// Export bloc

export 'theme_bloc.dart';

/// Bloc Builder
/// BlocBuilder handles building the widget in response to new states.
/// BlocBuilder is very similar to StreamBuilder but has a more simple API to reduce the amount of boilerplate code needed.
/// The builder function will potentially be called many times and should be a pure function that returns a widget in response to the state.

/// Bloc Provider
/// BlocProvider is a Flutter widget which provides a bloc to its children via BlocProvider.of<T>(context).
/// In most cases, BlocProvider should be used to create new blocs which will be made available to the rest of the subtree.
/// In this case, since BlocProvider is responsible for creating the bloc, it will automatically handle closing the bloc.

/// BlocListener
/// See BlocListener if you want to "do" anything in response to state changes such as navigation, showing a dialog, etc...
/// BlocListener is a Flutter widget which takes a BlocWidgetListener and an optional Bloc and invokes the listener in response to state changes in the bloc.
/// It should be used for functionality that needs to occur once per state change such as navigation, showing a SnackBar, showing a Dialog, etc...
/// listener is only called once for each state change (NOT including initialState) unlike builder in BlocBuilder and is a void function.

/// BlocConsumer
/// BlocConsumer exposes a builder and listener in order to react to new states.
/// BlocConsumer is analogous to a nested BlocListener and BlocBuilder but reduces the amount of boilerplate needed.
/// BlocConsumer should only be used when it is necessary to both rebuild UI and execute other reactions to state changes in the bloc.

/// RepositoryProvider
/// RepositoryProvider is a Flutter widget which provides a repository to its children via RepositoryProvider.of<T>(context).
/// It is used as a dependency injection (DI) widget so that a single instance of a repository can be provided to multiple widgets within a subtree.
/// BlocProvider should be used to provide blocs whereas RepositoryProvider should only be used for repositories.
import 'dart:async';

import 'package:coordinator/core/states.dart';
import 'package:flutter/material.dart';

/// This is the base class for coordinators, the start method is used
/// to initialize the coordinators ans setup the state machine, also
/// you can override it and implement some custom logic before the initialization
///
/// the send method is used to trigger new intentions to the state machine.

abstract class Coordinator {
  VoidCallback? coordinationDidFinish;

  void start({
    required BuildContext context,
    VoidCallback? coordinationDidFinish,
  });

  void send({
    required BuildContext context,
    required Intention intention,
    VoidCallback? onJobCompleted,
  });
}

abstract class CoordinatorExecutor {
  void navigateToScreen(
    BuildContext context,
    Intention? intention,
    MachineState state,
  );

  FutureOr<void> executeTask({
    required BuildContext context,
    required MachineState state,
    Intention? intention,
  });

  void startCoordinator({
    required BuildContext context,
    required MachineState state,
    VoidCallback? coordinationDidFinish,
    Intention? intention,
  });
}

abstract class CoordinatorLifecycle {
  /// The start of the coordinator lifecycle
  void onStart();

  /// When we start a new coordinator from it, it enters on a stopped mode, so it can't
  /// receive updates from the router observer for example.
  void onStop();

  /// When the coordinator that we start finishes and we bring back the last coordinator
  /// tor life.
  void onResume();
}

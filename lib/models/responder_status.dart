enum ResponderStatusState {
  available,
  dispatched,
  enRoute,
  onScene,
  transporting,
  hospitalHandover,
  returningToStation;

  bool get isBusy => this != ResponderStatusState.available;
}

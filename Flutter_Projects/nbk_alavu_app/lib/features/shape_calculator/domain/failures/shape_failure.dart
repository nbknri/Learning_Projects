abstract class Failure {
  final String message;
  const Failure(this.message);

  @override
  String toString() => message;
}

class ValidationFailure extends Failure {
  const ValidationFailure(super.message);
}

class CalculationFailure extends Failure {
  const CalculationFailure(super.message);
}

class InvalidInputFailure extends Failure {
  const InvalidInputFailure(super.message);
}

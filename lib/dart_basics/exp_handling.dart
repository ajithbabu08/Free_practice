void main() {
  try {
    validateUsername("");
  } catch (e) {
    print("An error occurred: $e");
  } finally {
    print('This is the finally block, it always gets executed');
  }
}

void validateUsername(String username) {
  if (username.isEmpty) {
    throw ArgumentError('Username cannot be empty');
  }
}

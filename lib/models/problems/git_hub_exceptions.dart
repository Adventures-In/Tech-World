class GitHubLoginException implements Exception {
  const GitHubLoginException(this.message);
  final String message;
  @override
  String toString() => message;
}

class GitHubTokenException implements Exception {
  const GitHubTokenException(this.message);
  final String message;
  @override
  String toString() => message;
}

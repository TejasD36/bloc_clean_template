import '../repositories/profile_repository.dart';

/// Use case for Profile.
class ProfileUsecase {
  const ProfileUsecase({
    required ProfileRepository repository,
  }) : _repository = repository;

  final ProfileRepository _repository;

  // TODO: Implement use case.
}
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/user.dart';

abstract class AuthApi {
  Future<AuthResponseDto> login(LoginRequestDto loginUser);

  Future<AuthResponseDto> register(CreateUserDto createUser);

  Future<UserDto> update({
    required AuthResponseDto authUser,
    required UpdateUserDto updateUser,
  });

  Future<void> logout();

  Future<AuthResponseDto> getMe(AuthResponseDto token);
}

class AuthEndpoints {
  const AuthEndpoints._();
  static const splashScreen = '/api/v1/customer/splash-screen';
  static const sendOtp = '/api/v1/customer/auth/send-otp';
  static const resendOtp = '/api/v1/customer/auth/resend-otp';
  static const verifyOtp = '/api/v1/customer/auth/verify-otp';
  static const logout = '/api/v1/customer/auth/logout';

  static const home = '/api/v1/customer/home-screen';

  static const getProfile = '/api/v1/customer/profile/get-profile';
  static const updateProfile = '/api/v1/customer/profile/update-profile';
}

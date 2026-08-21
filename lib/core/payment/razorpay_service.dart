import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../logger/logger_service.dart';

typedef PaymentSuccessCallback = void Function(PaymentSuccessResponse response);
typedef PaymentFailureCallback = void Function(PaymentFailureResponse response);

/// Owns one Razorpay checkout instance for one payment flow.
class RazorpayService {
  RazorpayService(this._onSuccess, this._onFailure) {
    try {
      _razorpay = Razorpay();
      _razorpay?.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
      _razorpay?.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    } catch (error, stackTrace) {
      logError(
        'Failed to initialize Razorpay',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  final PaymentSuccessCallback _onSuccess;
  final PaymentFailureCallback _onFailure;
  Razorpay? _razorpay;

  void openCheckout({
    required double amount,
    required String orderId,
    required String razorpayKey,
    String? paymentDescription,
    String? contact,
    String? email,
    String merchantName = 'Pune Water Helpline',
    String? imageUrl,
  }) {
    final checkout = _razorpay;
    if (checkout == null) {
      logWarning('Razorpay checkout is unavailable');
      return;
    }

    if (amount <= 0 || orderId.trim().isEmpty || razorpayKey.trim().isEmpty) {
      logWarning('Invalid Razorpay checkout parameters');
      return;
    }

    final options = <String, dynamic>{
      'key': razorpayKey,
      'amount': (amount * 100).round(),
      'currency': 'INR',
      'name': merchantName,
      'order_id': orderId,
      if (paymentDescription != null && paymentDescription.trim().isNotEmpty)
        'description': paymentDescription,
      if ((contact ?? '').trim().isNotEmpty || (email ?? '').trim().isNotEmpty)
        'prefill': <String, String>{
          if ((contact ?? '').trim().isNotEmpty) 'contact': contact!.trim(),
          if ((email ?? '').trim().isNotEmpty) 'email': email!.trim(),
        },
      if (imageUrl != null && imageUrl.trim().isNotEmpty) 'image': imageUrl,
      'send_sms_hash': true,
      'theme.color': '#0073E0',
    };

    try {
      logDebug('Opening Razorpay checkout for order $orderId');
      checkout.open(options);
    } catch (error, stackTrace) {
      logError(
        'Failed to open Razorpay checkout',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    try {
      _onSuccess(response);
    } catch (error, stackTrace) {
      logError(
        'Razorpay success callback failed',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    try {
      _onFailure(response);
    } catch (error, stackTrace) {
      logError(
        'Razorpay failure callback failed',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  void dispose() {
    _razorpay?.clear();
    _razorpay = null;
  }
}

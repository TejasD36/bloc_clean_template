import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../../../core.dart';
import '../../../address/domain/entities/address_entity.dart';
import '../../../home/domain/entities/home_entity.dart';
import '../../domain/entities/tanker_capacity_entity.dart';
import '../../domain/entities/water_type_entity.dart';
import '../bloc/plumbing_booking_bloc.dart';
import '../bloc/water_testing_booking_bloc.dart';
import '../models/booking_success_args.dart';
import '../models/plumbing_booking_args.dart';
import '../models/summary_field.dart';
import '../models/water_tank_cleaning_booking_args.dart';
import '../models/water_testing_booking_args.dart';
import '../widgets/payment_summary.dart';

class BookingSummaryArgs {
  const BookingSummaryArgs({required this.service, required this.capacity, required this.waterType, required this.address});

  final HomeServiceEntity service;
  final TankerCapacityEntity capacity;
  final WaterTypeEntity waterType;
  final AddressEntity address;
}

class BookingSummaryScreen extends StatelessWidget {
  const BookingSummaryScreen({
    super.key,
    required this.service,
    this.capacity,
    this.waterType,
    this.address,
    this.plumbingBooking,
    this.cleaningBooking,
    this.testingBooking,
  }) : assert(
         (plumbingBooking != null || cleaningBooking != null || testingBooking != null || (capacity != null && waterType != null)) &&
             (testingBooking != null || address != null),
         'Tanker, cleaning, or plumbing booking data is required.',
       );

  final HomeServiceEntity service;
  final TankerCapacityEntity? capacity;
  final WaterTypeEntity? waterType;
  final AddressEntity? address;
  final PlumbingBookingArgs? plumbingBooking;
  final WaterTankCleaningSummaryArgs? cleaningBooking;
  final WaterTestingBookingArgs? testingBooking;

  bool get isPlumbing => plumbingBooking != null;
  bool get isWaterTesting => testingBooking != null;
  bool get isPaidWaterTesting => testingBooking?.package != null;

  double get amount => capacity?.price ?? 0;

  double get payableAmount {
    if (cleaningBooking != null) {
      return cleaningBooking!.cleaningMethod.priceFor(cleaningBooking!.capacity.id);
    }
    if (testingBooking != null) return testingBooking!.amount;
    return amount;
  }

  @override
  Widget build(BuildContext context) {
    if (isPlumbing) {
      return BlocProvider(
        create: (_) => sl<PlumbingBookingBloc>(),
        child: BlocListener<PlumbingBookingBloc, PlumbingBookingState>(listener: _onPlumbingState, child: _scaffold(context)),
      );
    }
    if (isWaterTesting) {
      return BlocProvider(
        create: (_) => sl<WaterTestingBookingBloc>(),
        child: BlocListener<WaterTestingBookingBloc, WaterTestingBookingState>(listener: _onWaterTestingState, child: _scaffold(context)),
      );
    }
    return _scaffold(context);
  }

  Widget _scaffold(BuildContext context) => AppScaffold(
    appBar: AppBar(title: const Text('Booking Details')),
    backgroundColor: Colors.white,
    bottomNavigationBar: SafeArea(
      child: Material(
        elevation: 3,
        shadowColor: AppColor.black,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 16, 20.w, 16),
          child: payableAmount > 0
              ? Row(
                  children: [
                    Expanded(child: PaymentSummary(total: payableAmount)),
                    const SizedBox(width: 16),
                    Expanded(child: _bookingAction(context)),
                  ],
                )
              : SizedBox(width: double.infinity, child: _bookingAction(context)),
        ),
      ),
    ),
    body: SingleChildScrollView(padding: const EdgeInsets.only(top: 20), child: _summaryCard()),
  );

  Widget _bookingAction(BuildContext context) {
    if (isWaterTesting) {
      return BlocBuilder<WaterTestingBookingBloc, WaterTestingBookingState>(
        builder: (context, state) => _actionButton(context, isSubmitting: state is WaterTestingBookingSubmitting),
      );
    }
    if (!isPlumbing) return _actionButton(context);
    return BlocBuilder<PlumbingBookingBloc, PlumbingBookingState>(
      builder: (context, state) => _actionButton(context, isSubmitting: state is PlumbingBookingSubmitting),
    );
  }

  Widget _summaryCard() => Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [BoxShadow(color: Color(0x0D000000), blurRadius: 3, offset: Offset(0, 1))],
    ),
    child: Column(
      children: [
        const Row(
          children: [
            Icon(Icons.receipt_long_outlined, color: Color(0xFF1D4ED8)),
            SizedBox(width: 8),
            Text('Service Summary', style: TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
        const SizedBox(height: 16),
        ...summaryFields.map((field) => _summaryRow(field.label, field.value, field.icon)),
      ],
    ),
  );

  List<SummaryField> get summaryFields {
    final fields = <SummaryField>[];
    fields.add(SummaryField('Service Name', service.name, Icons.build_outlined));
    switch (CustomerServiceSlug.fromValue(service.slug)) {
      case CustomerServiceSlug.waterTanker:
        fields.addAll([
          SummaryField('Water Type', waterType?.title ?? '', Icons.water_drop_outlined),
          SummaryField('Capacity', '${capacity?.capacityLiters ?? 0} L', Icons.local_shipping_outlined),
        ]);
      case CustomerServiceSlug.plumbingService:
        fields.addAll([
          SummaryField('Service Type', plumbingBooking?.options.map((item) => item.title).join(', ') ?? '', Icons.build_outlined),
        ]);
      case CustomerServiceSlug.waterTankCleaning:
        final booking = cleaningBooking!;
        fields.addAll([
          SummaryField('Tank Type', booking.tankType.title, Icons.water_drop_outlined),
          SummaryField('Capacity', booking.capacity.title, Icons.straighten_outlined),
          SummaryField('Cleaning Method', booking.cleaningMethod.title, Icons.cleaning_services_outlined),
        ]);
      case CustomerServiceSlug.waterTestingLaboratory:
        final booking = testingBooking!;
        fields.add(SummaryField('Booking Type', booking.serviceType, Icons.science_outlined));
        if (booking.package != null) {
          fields.add(SummaryField('Test Package', booking.package!.title, Icons.inventory_2_outlined));
        }
      default:
        break;
    }

    if (payableAmount > 0) {
      fields.add(SummaryField('Total Amount', _money(payableAmount), Icons.currency_rupee));
    }
    if (address != null) {
      fields.add(SummaryField('Address', _addressText(address!), Icons.location_on_outlined));
    }
    return fields;
  }

  String _money(double value) =>
      '${capacity?.currency ?? cleaningBooking?.cleaningMethod.currency ?? testingBooking?.package?.currency ?? '₹'}${value.toStringAsFixed(0)}';

  Widget _actionButton(BuildContext context, {bool isSubmitting = false}) => ElevatedButton.icon(
    onPressed: isSubmitting
        ? null
        : () {
            if (isPlumbing) {
              _submitPlumbing(context);
            } else if (isWaterTesting && !isPaidWaterTesting) {
              _submitWaterTesting(context);
            } else {
              _startPayment(context);
            }
          },
    icon: isSubmitting
        ? const SizedBox(height: 18, width: 18, child: CircularProgressIndicator(strokeWidth: 2))
        : const Icon(Icons.arrow_forward),
    label: Text(isPlumbing || (isWaterTesting && !isPaidWaterTesting) ? 'Book Service' : 'Proceed to Pay'),
  );

  Widget _summaryRow(String label, String value, IconData icon) => Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(color: const Color(0xFFEFF6FF), borderRadius: BorderRadius.circular(12)),
          child: Icon(icon, color: const Color(0xFF3B82F6), size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 40,
                alignment: Alignment.centerLeft,
                child: Text(label, style: const TextStyle(color: Color(0xFF6B7280))),
              ),
              const SizedBox(width: 12),
              Flexible(
                child: Text(
                  value,
                  textAlign: TextAlign.right,
                  style: const TextStyle(color: Color(0xFF111827), fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  void _submitPlumbing(BuildContext context) {
    final booking = plumbingBooking!;
    context.read<PlumbingBookingBloc>().submit(
      offeringId: booking.service.id,
      addressId: booking.address.id,
      optionIds: booking.options.map((item) => item.id).toList(),
    );
  }

  void _onPlumbingState(BuildContext context, PlumbingBookingState state) {
    if (state is PlumbingBookingSuccess) {
      final booking = plumbingBooking!;
      context.pushReplacement(
        AppRoute.bookingSuccess.path,
        extra: BookingSuccessArgs(
          service: booking.service,
          serviceType: booking.options.map((item) => item.title).join(', '),
          address: booking.address,
        ),
      );
    } else if (state is PlumbingBookingFailure) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(state.message)));
    }
  }

  void _submitWaterTesting(BuildContext context) {
    final booking = testingBooking!;
    context.read<WaterTestingBookingBloc>().submit(
      offeringId: booking.service.id,
      addressId: booking.address?.id,
      sampleType: booking.sampleType,
      selectedPlan: booking.package?.id,
      totalPrice: booking.amount,
    );
  }

  void _onWaterTestingState(BuildContext context, WaterTestingBookingState state) {
    if (state is WaterTestingBookingSuccess) {
      final booking = testingBooking!;
      context.pushReplacement(
        AppRoute.bookingSuccess.path,
        extra: BookingSuccessArgs(
          service: booking.service,
          serviceType: booking.package == null ? booking.serviceType : '${booking.serviceType} - ${booking.package!.title}',
          address: booking.address,
        ),
      );
    } else if (state is WaterTestingBookingFailure) {
      Utils.showMessage(context, state.message);
    }
  }

  void _startPayment(BuildContext context) {
    const razorpayKey = String.fromEnvironment('razorpayKey');
    const orderId = String.fromEnvironment('razorpayOrderId');

    if (razorpayKey.isEmpty || orderId.isEmpty) {
      Utils.showMessage(context, 'Payment order is not ready. Create the booking order before payment.');
      return;
    }

    late final RazorpayService razorpay;
    razorpay = sl<RazorpayService>(
      param1: (PaymentSuccessResponse response) {
        razorpay.dispose();
        final paymentServiceType = waterType?.title ?? cleaningBooking?.cleaningMethod.title ?? testingBooking?.serviceType ?? service.name;
        final paymentCurrency = capacity?.currency ?? cleaningBooking?.cleaningMethod.currency ?? testingBooking?.package?.currency ?? '₹';
        context.pushReplacement(
          AppRoute.bookingSuccess.path,
          extra: BookingSuccessArgs(
            service: service,
            serviceType: paymentServiceType,
            address: address,
            amount: payableAmount,
            currency: paymentCurrency,
          ),
        );
      },
      param2: (PaymentFailureResponse response) {
        razorpay.dispose();
        Utils.showMessage(context, 'Payment was not completed.');
      },
    );
    razorpay.openCheckout(amount: payableAmount, orderId: orderId, razorpayKey: razorpayKey, paymentDescription: service.name);
  }

  String _addressText(AddressEntity value) =>
      [value.flatNumberOrBuildingName, value.areaStreetName, value.city, value.pincode].where((item) => item.trim().isNotEmpty).join(', ');
}

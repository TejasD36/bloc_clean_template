# Pune Water Helpline Customer App Context

This repository is for the Pune Water Helpline (PWH) Customer Mobile Application.

PWH is part of a larger multi-vendor water-services marketplace that also includes:

- Customer Mobile App
- Vendor App
- Driver / Technician App
- Admin Web Portal

Work in this repository must stay scoped to the Customer Mobile App unless explicitly instructed otherwise.

## Product Purpose

Pune Water Helpline lets customers book water-related products and services fulfilled either directly by PWH or by nearby third-party vendors.

Service allocation depends mainly on:

- Customer location
- PWH service coverage
- Service type
- Vendor availability

Customers should be able to discover services, make bookings/orders, pay, track applicable deliveries, view booking status/history, receive notifications, download invoices/reports, and contact support.

## Technical Architecture

The app is built in Flutter.

Use:

- BLoC for state management
- Clean Architecture
- Feature-based modular structure
- Clear separation between presentation, domain, and data

General structure:

```text
lib/
  core/
  features/
    authentication/
    home/
    services/
    bookings/
    payments/
    tracking/
    profile/
    notifications/
```

Typical feature structure:

```text
feature/
  data/
    datasources/
    models/
    repositories/
  domain/
    entities/
    repositories/
    usecases/
  presentation/
    bloc/
    pages/
    widgets/
```

Do not tightly couple UI to API or data-layer implementation. Keep business logic inside BLoCs and use cases rather than widgets. Reuse components where multiple services share similar flows. Before modifying architecture, inspect the project and follow existing conventions.

## Authentication And Profile

Customer authentication includes:

- Mobile number registration
- OTP login
- OTP verification
- Profile management
- Current location detection using GPS

Location affects booking allocation because the app must know whether the customer is inside or outside a PWH-operated service area. Customers should also be able to provide or select a manual address where applicable.

## Home Dashboard

The customer home/dashboard contains:

- Service categories
- Promotional banners
- Service search
- Recent bookings
- Emergency call button
- Offers
- Coupons
- Notifications

The user should be able to quickly discover and navigate to any supported service from the home screen.

## Supported Customer Services

The Customer App contains 11 major service categories.

### 1. Water Tanker Booking

Tanker capacities:

- 5,000 Liters
- 6,000 Liters
- 10,000 Liters
- 12,000 Liters

Required time:

- Immediate
- Scheduled date and time

Location:

- Current GPS location
- Manual address

Booking information should include starting price, dynamic pricing notice, estimated delivery time, and payment options.

Payment options:

- Cash on Delivery
- UPI
- Online Payment

Service highlights:

- 24x7 service
- Tested water
- Live GPS tanker tracking

Additional UI/content:

- FAQs
- Floating call button
- Emergency support

### 2. Drinking Water Jar And Bottle Ordering

Supported products:

- 1L Bottle Box
- 2L Bottle Box
- 500ml Bottle Box
- 20L Water Jar

Customer flow:

```text
Browse/Search Products
        ↓
Select Quantity
        ↓
Add to Cart
        ↓
Checkout
        ↓
Select Delivery Address
        ↓
Select Delivery Schedule
        ↓
Payment
        ↓
Order Tracking
```

Features:

- Product search
- Quantity selector
- Cart
- Checkout
- Delivery address
- Delivery schedule
- Online payment
- Live delivery tracking
- Order history

### 3. Water Tank Cleaning

Booking form fields:

- Tank type
- Tank capacity
- Cleaning type
- Address
- Preferred date and time

Additional content/features:

- Cleaning process showcase
- Service warranty information
- AMC information
- FAQ

### 4. Water Testing Laboratory

Booking methods:

- Home Sample Collection
- Self Sample Submission

For self-submission, customers select the nearest sample collection center.

Test packages:

- Basic
- Standard
- Premium

Features:

- Online payment
- Sample collection booking
- Test progress/status
- PDF test report download

Customers should later be able to access completed water testing reports from their account/history.

### 5. RO Water Purifier

Service types:

- Buy New RO
- Repair & Service
- AMC Renewal

Features:

- Product catalog
- Brand selection
- Problem selection
- Payment gateway
- Service history

The UI should adapt based on whether the customer is buying a product, requesting repair/service, or renewing AMC.

### 6. Water Softener

Supported requirements:

- Sales
- Installation
- Service
- AMC

This should behave as a customer enquiry, booking, or service flow depending on the selected requirement.

### 7. Water Cooler And Water Purifier On Rent

Rental products:

- Water Coolers
- Water Purifiers

Features:

- Rental plans
- Security deposit
- Installation booking

Customers should be able to select the rental product/plan and proceed through the required booking/payment process.

### 8. Plumbing Services

Supported categories:

- Leakage
- Tap Repair
- Bathroom Fittings
- Motor Installation
- Drain Cleaning
- Pipe Repair

Features:

- Emergency booking
- Scheduled visit
- Booking information

The UI should support both urgent and scheduled service requests.

### 9. Rain Water Harvesting

Customers can request a site visit for:

- Home
- Society
- Commercial
- Industrial

Flow/features:

- Book site visit
- Quotation request
- Engineer visit
- Project tracking

This is more of a project/service lifecycle than a simple delivery order, so booking statuses may span several stages.

### 10. STP Sewage Treatment Plant

Supported process:

- Site Survey
- Consultation
- Quotation
- Installation
- AMC

Applicable project/customer types:

- Corporate Projects
- Societies
- Hotels
- Factories

This is project-oriented, and customers should be able to follow the service/project lifecycle.

### 11. Borewell Services

Available services:

- Borewell Recharge
- Deep Cleaning
- Camera Inspection
- Pump Repair
- Motor Installation

Customers can select the required borewell service and create a booking.

## Common Booking Engine

Most service bookings conceptually follow this flow:

```text
Customer Booking
        ↓
Area Validation
        ↓
Is customer inside Admin/PWH service area?
```

If yes:

```text
Admin Accepts
        ↓
Admin assigns Driver / Technician
        ↓
Live Tracking where applicable
        ↓
Service Completion
        ↓
Payment Settlement
```

If no:

```text
Nearby Vendor Notification
        ↓
Vendor Accept / Pass
        ↓
Assign Delivery Partner / Technician
        ↓
Live Tracking where applicable
        ↓
Service Completion
        ↓
Payment Settlement
```

Do not assume every service has identical UI. Reuse common booking/domain components while allowing each service to have service-specific fields and statuses.

## Water Tanker Allocation

Inside PWH service zone:

```text
Customer creates booking
        ↓
Booking goes directly to Admin
        ↓
Admin assigns Driver
        ↓
Customer can track tanker live
        ↓
Delivery/service completion
```

Outside PWH service zone:

```text
Customer creates booking
        ↓
Nearby Vendors receive booking request
        ↓
Vendor gets 60 seconds
        ↓
Vendor chooses Accept or Pass
```

If a vendor accepts, the vendor can self-deliver or assign a driver. If a vendor passes, the request automatically goes to the next nearby vendor. If nobody accepts, show "No Vendor Available" and provide "Contact Admin".

The Customer App does not manage vendor-side acceptance logic directly, but its UI/state must represent the resulting booking states correctly.

## Live Tracking

Live tracking is explicitly required for:

- Water tanker deliveries
- Water bottle and jar deliveries

Tracking features include:

- Driver live location
- ETA
- Call driver
- Navigation-related tracking information

Do not automatically assume every technician-based service needs continuous live GPS tracking unless requirements expand later.

## Payments

Supported online payment methods include:

- UPI
- Credit cards
- Debit cards
- Net Banking

The platform will include online payment gateway integration and invoice generation. Some flows may also support Cash on Delivery where explicitly defined, such as Water Tanker Booking.

Payment handling should be reusable rather than implemented separately for every service.

## Customer Account Features

Customers should have access to:

- Booking history
- Live booking status
- Download invoice
- Download water testing reports
- Notifications
- Emergency contact

The booking module should handle different booking/service types through common abstractions while still allowing service-specific details.

## Notifications

Customers can be notified about:

- Booking Confirmation
- Driver Assigned
- Technician Assigned
- Vendor Accepted
- Payment Success
- Service Completed
- Water testing Report Ready
- AMC Renewal Reminder

Notification channels mentioned by requirements:

- Push Notifications
- SMS

Within this Flutter repository, implement customer-facing notification UI/state only when requested. Backend/SMS infrastructure belongs outside the Customer App.

## Important Booking States

Expected conceptual booking states include:

```text
Booking Created
Waiting for Allocation
Admin Accepted
Searching Vendor
Vendor Accepted
Driver Assigned
Technician Assigned
Scheduled
On The Way
In Progress
Delivered
Service Completed
Payment Pending
Payment Successful
Report Ready
No Vendor Available
Cancelled
```

This is a conceptual model only. Do not treat every state name as a confirmed backend enum. When actual API contracts are provided, use backend-defined values.

## Location

Location is a core business requirement, not only display data.

It affects:

- PWH service-area validation
- Nearby vendor allocation
- Delivery/service location
- Water testing center selection where applicable
- Live tracking

Treat location handling as a core reusable feature.

## Reusable Functional Areas

Where appropriate, design reusable modules/components for:

- Authentication
- Location
- Address selection
- Service listing
- Service details
- Booking creation
- Date/time scheduling
- Booking status
- Booking history
- Payment
- Invoice
- Tracking
- Notifications
- Search
- Offers/coupons
- Emergency support
- Reports/documents

Avoid duplicating the entire booking architecture separately for all 11 services.

## Domain Concept

The app contains three broad customer transaction types.

Product Orders:

- Water bottles
- Water jars
- RO products

Service Bookings:

- Plumbing
- Tank cleaning
- Borewell
- RO repair
- Water softener service

Project / Consultation Requests:

- Rain Water Harvesting
- STP
- Some installation/AMC-related services

Design the code so these differences can be represented cleanly without forcing every service into the exact same UI flow.

## Scope Boundary

Do not implement Vendor App responsibilities such as:

- Vendor accepting/passing requests
- Vendor earnings
- Vendor settlement
- Vendor availability management
- Driver management
- Vendor service configuration

Do not implement Driver/Technician App responsibilities such as:

- Driver job dashboard
- Driver-side GPS broadcasting
- Start Delivery action
- Delivered action
- Customer OTP validation from driver side
- Driver delivery history

Do not implement Admin Portal responsibilities such as:

- Vendor onboarding
- Coverage-area configuration
- Pricing management
- Vendor payouts
- Vendor distribution engine
- Master management
- Revenue dashboards

The Customer App should only consume and display the results of those backend operations where necessary.

## Development Rules

Whenever building or modifying a feature in this repository:

1. Inspect the relevant existing files and architecture first.
2. Follow the project's current BLoC and Clean Architecture conventions.
3. Do not introduce another state-management solution.
4. Keep presentation, domain, and data responsibilities separated.
5. Reuse existing shared widgets/services/utilities where appropriate.
6. Do not unnecessarily rewrite working code.
7. Do not invent backend API fields, endpoints, or response structures.
8. If an API contract is missing, keep the architecture ready for integration and clearly mention assumptions.
9. Do not implement Vendor, Driver/Technician, or Admin functionality inside this app.
10. Consider how the requested feature fits into the complete customer booking lifecycle.
11. Prefer scalable solutions because multiple services share booking, payment, scheduling, location, and status concepts.
12. Preserve service-specific requirements instead of over-generalizing everything into one generic form.
13. When requirements are unclear, inspect the existing project first and ask before making major architectural assumptions.

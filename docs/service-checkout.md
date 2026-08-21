# Service Checkout Contract

This document records the customer booking checkout contract and the current
payload requirements for each service. Update the service row and payload
example when its complete UI flow is implemented.

## Shared Checkout API

**Endpoint:** `POST /api/v1/customer/bookings/checkout`

**Headers:**

- `Accept: application/json`
- `Content-Type: application/json`
- `Authorization: Bearer <customer-access-token>`

**Common request envelope:**

```json
{
  "offering_id": "<home-screen-service-id>",
  "user_address_id": "<selected-address-id>",
  "total_price": 0,
  "booking_data": {}
}
```

Notes:

- `offering_id` is the `id` returned for the matching service by the home
  screen API. It must not be inferred from the slug.
- `user_address_id` is the selected saved address ID.
- `total_price` is the final customer amount, in INR, before payment order
  creation.
- `booking_data` is service-specific. Services without booking data may omit
  the field, subject to backend validation.
- The access token is supplied by the existing authentication interceptor and
  must not be hardcoded in the app or this document.

## Service Matrix

| Service slug | Service | Payment required | Current checkout flow |
| --- | --- | ---: | --- |
| `water-tanker` | Water Tanker | Yes | Implemented through address selection and tanker summary; checkout payload pending |
| `water-bottle-jar-delivery` | Water Bottle & Jar Delivery | Yes | Product selection and cart summary implemented; checkout payload pending |
| `water-tank-cleaning` | Water Tank Cleaning | Yes | Not implemented |
| `plumbing-service` | Plumbing Service | No | Not implemented |
| `water-testing-laboratory` | Water Testing | Conditional | Not implemented; home sample is paid, self sample is unpaid |
| `ro-service` | RO Water Purifier | Conditional | Not implemented; new RO and AMC are paid, repair is unpaid |
| `water-softner` | Water Softener | No | Not implemented |
| `water-cooler-and-purifier` | Water Cooler & Purifier | No | Not implemented |
| `rain-water-harvesting` | Rainwater Harvesting | No | Not implemented |
| `stp` | STP | No | Not implemented |
| `borewell` | Borewell | No | Not implemented |

## Payloads

### 1. Water Tanker

```json
{
  "offering_id": "<water-tanker-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 1500,
  "booking_data": {
    "tanker_capacity": "8k_l",
    "water_type": "domestic"
  }
}
```

### 2. Water Bottle & Jar Delivery

```json
{
  "offering_id": "<water-bottle-jar-delivery-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 60,
  "booking_data": {
    "products": [
      {
        "product_id": "premium_20l_jar",
        "quantity": 3
      },
      {
        "product_id": "1l_bottle_box_12_pack",
        "quantity": 2
      }
    ]
  }
}
```

### 3. Water Tank Cleaning

```json
{
  "offering_id": "<water-tank-cleaning-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 1199,
  "booking_data": {
    "tank_type": "overhead",
    "capacity": "1000_l",
    "cleaning_method": "deep_clean"
  }
}
```

### 4. Plumbing Service

```json
{
  "offering_id": "<plumbing-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 0,
  "booking_data": {
    "service_option": "leakage",
    "notes": "Leakage below kitchen sink"
  }
}
```

### 5. Water Testing

Paid home sample:

```json
{
  "offering_id": "<water-testing-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 1500,
  "booking_data": {
    "sample_type": "home_sample",
    "selected_plan": "standard"
  }
}
```

Unpaid self sample:

```json
{
  "offering_id": "<water-testing-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 0,
  "booking_data": {
    "sample_type": "self_sample"
  }
}
```

### 6. RO Water Purifier

Paid new RO:

```json
{
  "offering_id": "<ro-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 13999,
  "booking_data": {
    "service_type": "new_ro",
    "product_id": "aquaguard_delight_nxt"
  }
}
```

Unpaid repair:

```json
{
  "offering_id": "<ro-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 0,
  "booking_data": {
    "service_type": "repair",
    "service_id": "water_leakage",
    "notes": "Water leakage from purifier"
  }
}
```

Paid AMC:

```json
{
  "offering_id": "<ro-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 1499,
  "booking_data": {
    "service_type": "amc",
    "plan_id": "premium_amc"
  }
}
```

### 7. Water Softener

```json
{
  "offering_id": "<water-softner-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 0
}
```

### 8. Water Cooler & Purifier

```json
{
  "offering_id": "<water-cooler-and-purifier-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 0,
  "booking_data": {
    "option": "water_purifiers",
    "form": {
      "brand": "Kent",
      "issue": "Need installation"
    }
  }
}
```

### 9. Rainwater Harvesting

```json
{
  "offering_id": "<rain-water-harvesting-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 0,
  "booking_data": {
    "option": "society",
    "form": {
      "society_name": "Blue Lagoon",
      "floors": 12
    }
  }
}
```

### 10. STP

```json
{
  "offering_id": "<stp-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 0,
  "booking_data": {
    "service_type": "site_survey",
    "requirement_type": "residential",
    "form": {
      "capacity_kld": 50
    }
  }
}
```

### 11. Borewell

```json
{
  "offering_id": "<borewell-service-id>",
  "user_address_id": "<address-id>",
  "total_price": 0,
  "booking_data": {
    "service_type": "borewell_recharge",
    "form": {
      "depth_feet": 250
    }
  }
}
```

## Payment Integration Notes

For paid services, checkout should be the source of the Razorpay order
details. The eventual flow is:

1. Build the service-specific checkout payload.
2. Call the checkout endpoint.
3. Read the backend response for the Razorpay order ID, amount, key, and
   booking identifier.
4. Open Razorpay with those values.
5. Send the payment result to the backend verification endpoint when its
   contract is available.
6. Navigate to the booking details screen only after the backend confirms the
   booking/payment state.

The checkout response and payment verification endpoint were not included in
the current API contract and must be documented before finalizing the payment
implementation.

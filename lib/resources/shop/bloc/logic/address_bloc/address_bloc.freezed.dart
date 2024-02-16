// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)
        addAddress,
    required TResult Function(BuildContext context) fetchAddressEvent,
    required TResult Function(int selectedIndex) selectAddressEvent,
    required TResult Function(String addressId) saveAddressId,
    required TResult Function(BuildContext context, String id)
        fetchAddressByIdEvent,
    required TResult Function(String pincode) fetchPincodeAddres,
    required TResult Function(BuildContext context, String id)
        deleteAddressEvent,
    required TResult Function() fetchAddressDefaultIndex,
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)
        updateAddress,
    required TResult Function() makeDefaultResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult? Function(BuildContext context)? fetchAddressEvent,
    TResult? Function(int selectedIndex)? selectAddressEvent,
    TResult? Function(String addressId)? saveAddressId,
    TResult? Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult? Function(String pincode)? fetchPincodeAddres,
    TResult? Function(BuildContext context, String id)? deleteAddressEvent,
    TResult? Function()? fetchAddressDefaultIndex,
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult? Function()? makeDefaultResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult Function(BuildContext context)? fetchAddressEvent,
    TResult Function(int selectedIndex)? selectAddressEvent,
    TResult Function(String addressId)? saveAddressId,
    TResult Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult Function(String pincode)? fetchPincodeAddres,
    TResult Function(BuildContext context, String id)? deleteAddressEvent,
    TResult Function()? fetchAddressDefaultIndex,
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult Function()? makeDefaultResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(FetchAddressEvent value) fetchAddressEvent,
    required TResult Function(SelectAddressEvent value) selectAddressEvent,
    required TResult Function(SaveAddressId value) saveAddressId,
    required TResult Function(FetchAddressByIdEvent value)
        fetchAddressByIdEvent,
    required TResult Function(FetchPincodeAddres value) fetchPincodeAddres,
    required TResult Function(DeleteAddressEvent value) deleteAddressEvent,
    required TResult Function(FetchAddressDefaultIndex value)
        fetchAddressDefaultIndex,
    required TResult Function(UpdateAddress value) updateAddress,
    required TResult Function(_MakeDefaultResponse value) makeDefaultResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult? Function(SelectAddressEvent value)? selectAddressEvent,
    TResult? Function(SaveAddressId value)? saveAddressId,
    TResult? Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult? Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult? Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult? Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult? Function(UpdateAddress value)? updateAddress,
    TResult? Function(_MakeDefaultResponse value)? makeDefaultResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult Function(SelectAddressEvent value)? selectAddressEvent,
    TResult Function(SaveAddressId value)? saveAddressId,
    TResult Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult Function(UpdateAddress value)? updateAddress,
    TResult Function(_MakeDefaultResponse value)? makeDefaultResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res, AddressEvent>;
}

/// @nodoc
class _$AddressEventCopyWithImpl<$Res, $Val extends AddressEvent>
    implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddAddressImplCopyWith<$Res> {
  factory _$$AddAddressImplCopyWith(
          _$AddAddressImpl value, $Res Function(_$AddAddressImpl) then) =
      __$$AddAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String addressType,
      String name,
      int mobile,
      int pincode,
      String landmark,
      String addressLine,
      String city,
      String state,
      String country});
}

/// @nodoc
class __$$AddAddressImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$AddAddressImpl>
    implements _$$AddAddressImplCopyWith<$Res> {
  __$$AddAddressImplCopyWithImpl(
      _$AddAddressImpl _value, $Res Function(_$AddAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? addressType = null,
    Object? name = null,
    Object? mobile = null,
    Object? pincode = null,
    Object? landmark = null,
    Object? addressLine = null,
    Object? city = null,
    Object? state = null,
    Object? country = null,
  }) {
    return _then(_$AddAddressImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int,
      landmark: null == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine: null == addressLine
          ? _value.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddAddressImpl with DiagnosticableTreeMixin implements AddAddress {
  const _$AddAddressImpl(
      {required this.context,
      required this.addressType,
      required this.name,
      required this.mobile,
      required this.pincode,
      required this.landmark,
      required this.addressLine,
      required this.city,
      required this.state,
      required this.country});

  @override
  final BuildContext context;
  @override
  final String addressType;
  @override
  final String name;
  @override
  final int mobile;
  @override
  final int pincode;
  @override
  final String landmark;
  @override
  final String addressLine;
  @override
  final String city;
  @override
  final String state;
  @override
  final String country;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.addAddress(context: $context, addressType: $addressType, name: $name, mobile: $mobile, pincode: $pincode, landmark: $landmark, addressLine: $addressLine, city: $city, state: $state, country: $country)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressEvent.addAddress'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('addressType', addressType))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('mobile', mobile))
      ..add(DiagnosticsProperty('pincode', pincode))
      ..add(DiagnosticsProperty('landmark', landmark))
      ..add(DiagnosticsProperty('addressLine', addressLine))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('country', country));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.addressLine, addressLine) ||
                other.addressLine == addressLine) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, addressType, name,
      mobile, pincode, landmark, addressLine, city, state, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressImplCopyWith<_$AddAddressImpl> get copyWith =>
      __$$AddAddressImplCopyWithImpl<_$AddAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)
        addAddress,
    required TResult Function(BuildContext context) fetchAddressEvent,
    required TResult Function(int selectedIndex) selectAddressEvent,
    required TResult Function(String addressId) saveAddressId,
    required TResult Function(BuildContext context, String id)
        fetchAddressByIdEvent,
    required TResult Function(String pincode) fetchPincodeAddres,
    required TResult Function(BuildContext context, String id)
        deleteAddressEvent,
    required TResult Function() fetchAddressDefaultIndex,
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)
        updateAddress,
    required TResult Function() makeDefaultResponse,
  }) {
    return addAddress(context, addressType, name, mobile, pincode, landmark,
        addressLine, city, state, country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult? Function(BuildContext context)? fetchAddressEvent,
    TResult? Function(int selectedIndex)? selectAddressEvent,
    TResult? Function(String addressId)? saveAddressId,
    TResult? Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult? Function(String pincode)? fetchPincodeAddres,
    TResult? Function(BuildContext context, String id)? deleteAddressEvent,
    TResult? Function()? fetchAddressDefaultIndex,
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult? Function()? makeDefaultResponse,
  }) {
    return addAddress?.call(context, addressType, name, mobile, pincode,
        landmark, addressLine, city, state, country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult Function(BuildContext context)? fetchAddressEvent,
    TResult Function(int selectedIndex)? selectAddressEvent,
    TResult Function(String addressId)? saveAddressId,
    TResult Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult Function(String pincode)? fetchPincodeAddres,
    TResult Function(BuildContext context, String id)? deleteAddressEvent,
    TResult Function()? fetchAddressDefaultIndex,
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult Function()? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(context, addressType, name, mobile, pincode, landmark,
          addressLine, city, state, country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(FetchAddressEvent value) fetchAddressEvent,
    required TResult Function(SelectAddressEvent value) selectAddressEvent,
    required TResult Function(SaveAddressId value) saveAddressId,
    required TResult Function(FetchAddressByIdEvent value)
        fetchAddressByIdEvent,
    required TResult Function(FetchPincodeAddres value) fetchPincodeAddres,
    required TResult Function(DeleteAddressEvent value) deleteAddressEvent,
    required TResult Function(FetchAddressDefaultIndex value)
        fetchAddressDefaultIndex,
    required TResult Function(UpdateAddress value) updateAddress,
    required TResult Function(_MakeDefaultResponse value) makeDefaultResponse,
  }) {
    return addAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult? Function(SelectAddressEvent value)? selectAddressEvent,
    TResult? Function(SaveAddressId value)? saveAddressId,
    TResult? Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult? Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult? Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult? Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult? Function(UpdateAddress value)? updateAddress,
    TResult? Function(_MakeDefaultResponse value)? makeDefaultResponse,
  }) {
    return addAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult Function(SelectAddressEvent value)? selectAddressEvent,
    TResult Function(SaveAddressId value)? saveAddressId,
    TResult Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult Function(UpdateAddress value)? updateAddress,
    TResult Function(_MakeDefaultResponse value)? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(this);
    }
    return orElse();
  }
}

abstract class AddAddress implements AddressEvent {
  const factory AddAddress(
      {required final BuildContext context,
      required final String addressType,
      required final String name,
      required final int mobile,
      required final int pincode,
      required final String landmark,
      required final String addressLine,
      required final String city,
      required final String state,
      required final String country}) = _$AddAddressImpl;

  BuildContext get context;
  String get addressType;
  String get name;
  int get mobile;
  int get pincode;
  String get landmark;
  String get addressLine;
  String get city;
  String get state;
  String get country;
  @JsonKey(ignore: true)
  _$$AddAddressImplCopyWith<_$AddAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAddressEventImplCopyWith<$Res> {
  factory _$$FetchAddressEventImplCopyWith(_$FetchAddressEventImpl value,
          $Res Function(_$FetchAddressEventImpl) then) =
      __$$FetchAddressEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$FetchAddressEventImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$FetchAddressEventImpl>
    implements _$$FetchAddressEventImplCopyWith<$Res> {
  __$$FetchAddressEventImplCopyWithImpl(_$FetchAddressEventImpl _value,
      $Res Function(_$FetchAddressEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$FetchAddressEventImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FetchAddressEventImpl
    with DiagnosticableTreeMixin
    implements FetchAddressEvent {
  const _$FetchAddressEventImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.fetchAddressEvent(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressEvent.fetchAddressEvent'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAddressEventImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAddressEventImplCopyWith<_$FetchAddressEventImpl> get copyWith =>
      __$$FetchAddressEventImplCopyWithImpl<_$FetchAddressEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)
        addAddress,
    required TResult Function(BuildContext context) fetchAddressEvent,
    required TResult Function(int selectedIndex) selectAddressEvent,
    required TResult Function(String addressId) saveAddressId,
    required TResult Function(BuildContext context, String id)
        fetchAddressByIdEvent,
    required TResult Function(String pincode) fetchPincodeAddres,
    required TResult Function(BuildContext context, String id)
        deleteAddressEvent,
    required TResult Function() fetchAddressDefaultIndex,
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)
        updateAddress,
    required TResult Function() makeDefaultResponse,
  }) {
    return fetchAddressEvent(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult? Function(BuildContext context)? fetchAddressEvent,
    TResult? Function(int selectedIndex)? selectAddressEvent,
    TResult? Function(String addressId)? saveAddressId,
    TResult? Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult? Function(String pincode)? fetchPincodeAddres,
    TResult? Function(BuildContext context, String id)? deleteAddressEvent,
    TResult? Function()? fetchAddressDefaultIndex,
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult? Function()? makeDefaultResponse,
  }) {
    return fetchAddressEvent?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult Function(BuildContext context)? fetchAddressEvent,
    TResult Function(int selectedIndex)? selectAddressEvent,
    TResult Function(String addressId)? saveAddressId,
    TResult Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult Function(String pincode)? fetchPincodeAddres,
    TResult Function(BuildContext context, String id)? deleteAddressEvent,
    TResult Function()? fetchAddressDefaultIndex,
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult Function()? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (fetchAddressEvent != null) {
      return fetchAddressEvent(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(FetchAddressEvent value) fetchAddressEvent,
    required TResult Function(SelectAddressEvent value) selectAddressEvent,
    required TResult Function(SaveAddressId value) saveAddressId,
    required TResult Function(FetchAddressByIdEvent value)
        fetchAddressByIdEvent,
    required TResult Function(FetchPincodeAddres value) fetchPincodeAddres,
    required TResult Function(DeleteAddressEvent value) deleteAddressEvent,
    required TResult Function(FetchAddressDefaultIndex value)
        fetchAddressDefaultIndex,
    required TResult Function(UpdateAddress value) updateAddress,
    required TResult Function(_MakeDefaultResponse value) makeDefaultResponse,
  }) {
    return fetchAddressEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult? Function(SelectAddressEvent value)? selectAddressEvent,
    TResult? Function(SaveAddressId value)? saveAddressId,
    TResult? Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult? Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult? Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult? Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult? Function(UpdateAddress value)? updateAddress,
    TResult? Function(_MakeDefaultResponse value)? makeDefaultResponse,
  }) {
    return fetchAddressEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult Function(SelectAddressEvent value)? selectAddressEvent,
    TResult Function(SaveAddressId value)? saveAddressId,
    TResult Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult Function(UpdateAddress value)? updateAddress,
    TResult Function(_MakeDefaultResponse value)? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (fetchAddressEvent != null) {
      return fetchAddressEvent(this);
    }
    return orElse();
  }
}

abstract class FetchAddressEvent implements AddressEvent {
  const factory FetchAddressEvent({required final BuildContext context}) =
      _$FetchAddressEventImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$FetchAddressEventImplCopyWith<_$FetchAddressEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAddressEventImplCopyWith<$Res> {
  factory _$$SelectAddressEventImplCopyWith(_$SelectAddressEventImpl value,
          $Res Function(_$SelectAddressEventImpl) then) =
      __$$SelectAddressEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$SelectAddressEventImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$SelectAddressEventImpl>
    implements _$$SelectAddressEventImplCopyWith<$Res> {
  __$$SelectAddressEventImplCopyWithImpl(_$SelectAddressEventImpl _value,
      $Res Function(_$SelectAddressEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$SelectAddressEventImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectAddressEventImpl
    with DiagnosticableTreeMixin
    implements SelectAddressEvent {
  _$SelectAddressEventImpl({required this.selectedIndex});

  @override
  final int selectedIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.selectAddressEvent(selectedIndex: $selectedIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressEvent.selectAddressEvent'))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAddressEventImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAddressEventImplCopyWith<_$SelectAddressEventImpl> get copyWith =>
      __$$SelectAddressEventImplCopyWithImpl<_$SelectAddressEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)
        addAddress,
    required TResult Function(BuildContext context) fetchAddressEvent,
    required TResult Function(int selectedIndex) selectAddressEvent,
    required TResult Function(String addressId) saveAddressId,
    required TResult Function(BuildContext context, String id)
        fetchAddressByIdEvent,
    required TResult Function(String pincode) fetchPincodeAddres,
    required TResult Function(BuildContext context, String id)
        deleteAddressEvent,
    required TResult Function() fetchAddressDefaultIndex,
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)
        updateAddress,
    required TResult Function() makeDefaultResponse,
  }) {
    return selectAddressEvent(selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult? Function(BuildContext context)? fetchAddressEvent,
    TResult? Function(int selectedIndex)? selectAddressEvent,
    TResult? Function(String addressId)? saveAddressId,
    TResult? Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult? Function(String pincode)? fetchPincodeAddres,
    TResult? Function(BuildContext context, String id)? deleteAddressEvent,
    TResult? Function()? fetchAddressDefaultIndex,
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult? Function()? makeDefaultResponse,
  }) {
    return selectAddressEvent?.call(selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult Function(BuildContext context)? fetchAddressEvent,
    TResult Function(int selectedIndex)? selectAddressEvent,
    TResult Function(String addressId)? saveAddressId,
    TResult Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult Function(String pincode)? fetchPincodeAddres,
    TResult Function(BuildContext context, String id)? deleteAddressEvent,
    TResult Function()? fetchAddressDefaultIndex,
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult Function()? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (selectAddressEvent != null) {
      return selectAddressEvent(selectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(FetchAddressEvent value) fetchAddressEvent,
    required TResult Function(SelectAddressEvent value) selectAddressEvent,
    required TResult Function(SaveAddressId value) saveAddressId,
    required TResult Function(FetchAddressByIdEvent value)
        fetchAddressByIdEvent,
    required TResult Function(FetchPincodeAddres value) fetchPincodeAddres,
    required TResult Function(DeleteAddressEvent value) deleteAddressEvent,
    required TResult Function(FetchAddressDefaultIndex value)
        fetchAddressDefaultIndex,
    required TResult Function(UpdateAddress value) updateAddress,
    required TResult Function(_MakeDefaultResponse value) makeDefaultResponse,
  }) {
    return selectAddressEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult? Function(SelectAddressEvent value)? selectAddressEvent,
    TResult? Function(SaveAddressId value)? saveAddressId,
    TResult? Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult? Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult? Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult? Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult? Function(UpdateAddress value)? updateAddress,
    TResult? Function(_MakeDefaultResponse value)? makeDefaultResponse,
  }) {
    return selectAddressEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult Function(SelectAddressEvent value)? selectAddressEvent,
    TResult Function(SaveAddressId value)? saveAddressId,
    TResult Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult Function(UpdateAddress value)? updateAddress,
    TResult Function(_MakeDefaultResponse value)? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (selectAddressEvent != null) {
      return selectAddressEvent(this);
    }
    return orElse();
  }
}

abstract class SelectAddressEvent implements AddressEvent {
  factory SelectAddressEvent({required final int selectedIndex}) =
      _$SelectAddressEventImpl;

  int get selectedIndex;
  @JsonKey(ignore: true)
  _$$SelectAddressEventImplCopyWith<_$SelectAddressEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveAddressIdImplCopyWith<$Res> {
  factory _$$SaveAddressIdImplCopyWith(
          _$SaveAddressIdImpl value, $Res Function(_$SaveAddressIdImpl) then) =
      __$$SaveAddressIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String addressId});
}

/// @nodoc
class __$$SaveAddressIdImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$SaveAddressIdImpl>
    implements _$$SaveAddressIdImplCopyWith<$Res> {
  __$$SaveAddressIdImplCopyWithImpl(
      _$SaveAddressIdImpl _value, $Res Function(_$SaveAddressIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = null,
  }) {
    return _then(_$SaveAddressIdImpl(
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveAddressIdImpl
    with DiagnosticableTreeMixin
    implements SaveAddressId {
  _$SaveAddressIdImpl({required this.addressId});

  @override
  final String addressId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.saveAddressId(addressId: $addressId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressEvent.saveAddressId'))
      ..add(DiagnosticsProperty('addressId', addressId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveAddressIdImpl &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveAddressIdImplCopyWith<_$SaveAddressIdImpl> get copyWith =>
      __$$SaveAddressIdImplCopyWithImpl<_$SaveAddressIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)
        addAddress,
    required TResult Function(BuildContext context) fetchAddressEvent,
    required TResult Function(int selectedIndex) selectAddressEvent,
    required TResult Function(String addressId) saveAddressId,
    required TResult Function(BuildContext context, String id)
        fetchAddressByIdEvent,
    required TResult Function(String pincode) fetchPincodeAddres,
    required TResult Function(BuildContext context, String id)
        deleteAddressEvent,
    required TResult Function() fetchAddressDefaultIndex,
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)
        updateAddress,
    required TResult Function() makeDefaultResponse,
  }) {
    return saveAddressId(addressId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult? Function(BuildContext context)? fetchAddressEvent,
    TResult? Function(int selectedIndex)? selectAddressEvent,
    TResult? Function(String addressId)? saveAddressId,
    TResult? Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult? Function(String pincode)? fetchPincodeAddres,
    TResult? Function(BuildContext context, String id)? deleteAddressEvent,
    TResult? Function()? fetchAddressDefaultIndex,
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult? Function()? makeDefaultResponse,
  }) {
    return saveAddressId?.call(addressId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult Function(BuildContext context)? fetchAddressEvent,
    TResult Function(int selectedIndex)? selectAddressEvent,
    TResult Function(String addressId)? saveAddressId,
    TResult Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult Function(String pincode)? fetchPincodeAddres,
    TResult Function(BuildContext context, String id)? deleteAddressEvent,
    TResult Function()? fetchAddressDefaultIndex,
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult Function()? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (saveAddressId != null) {
      return saveAddressId(addressId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(FetchAddressEvent value) fetchAddressEvent,
    required TResult Function(SelectAddressEvent value) selectAddressEvent,
    required TResult Function(SaveAddressId value) saveAddressId,
    required TResult Function(FetchAddressByIdEvent value)
        fetchAddressByIdEvent,
    required TResult Function(FetchPincodeAddres value) fetchPincodeAddres,
    required TResult Function(DeleteAddressEvent value) deleteAddressEvent,
    required TResult Function(FetchAddressDefaultIndex value)
        fetchAddressDefaultIndex,
    required TResult Function(UpdateAddress value) updateAddress,
    required TResult Function(_MakeDefaultResponse value) makeDefaultResponse,
  }) {
    return saveAddressId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult? Function(SelectAddressEvent value)? selectAddressEvent,
    TResult? Function(SaveAddressId value)? saveAddressId,
    TResult? Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult? Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult? Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult? Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult? Function(UpdateAddress value)? updateAddress,
    TResult? Function(_MakeDefaultResponse value)? makeDefaultResponse,
  }) {
    return saveAddressId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult Function(SelectAddressEvent value)? selectAddressEvent,
    TResult Function(SaveAddressId value)? saveAddressId,
    TResult Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult Function(UpdateAddress value)? updateAddress,
    TResult Function(_MakeDefaultResponse value)? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (saveAddressId != null) {
      return saveAddressId(this);
    }
    return orElse();
  }
}

abstract class SaveAddressId implements AddressEvent {
  factory SaveAddressId({required final String addressId}) =
      _$SaveAddressIdImpl;

  String get addressId;
  @JsonKey(ignore: true)
  _$$SaveAddressIdImplCopyWith<_$SaveAddressIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAddressByIdEventImplCopyWith<$Res> {
  factory _$$FetchAddressByIdEventImplCopyWith(
          _$FetchAddressByIdEventImpl value,
          $Res Function(_$FetchAddressByIdEventImpl) then) =
      __$$FetchAddressByIdEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String id});
}

/// @nodoc
class __$$FetchAddressByIdEventImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$FetchAddressByIdEventImpl>
    implements _$$FetchAddressByIdEventImplCopyWith<$Res> {
  __$$FetchAddressByIdEventImplCopyWithImpl(_$FetchAddressByIdEventImpl _value,
      $Res Function(_$FetchAddressByIdEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? id = null,
  }) {
    return _then(_$FetchAddressByIdEventImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAddressByIdEventImpl
    with DiagnosticableTreeMixin
    implements FetchAddressByIdEvent {
  const _$FetchAddressByIdEventImpl({required this.context, required this.id});

  @override
  final BuildContext context;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.fetchAddressByIdEvent(context: $context, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressEvent.fetchAddressByIdEvent'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAddressByIdEventImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAddressByIdEventImplCopyWith<_$FetchAddressByIdEventImpl>
      get copyWith => __$$FetchAddressByIdEventImplCopyWithImpl<
          _$FetchAddressByIdEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)
        addAddress,
    required TResult Function(BuildContext context) fetchAddressEvent,
    required TResult Function(int selectedIndex) selectAddressEvent,
    required TResult Function(String addressId) saveAddressId,
    required TResult Function(BuildContext context, String id)
        fetchAddressByIdEvent,
    required TResult Function(String pincode) fetchPincodeAddres,
    required TResult Function(BuildContext context, String id)
        deleteAddressEvent,
    required TResult Function() fetchAddressDefaultIndex,
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)
        updateAddress,
    required TResult Function() makeDefaultResponse,
  }) {
    return fetchAddressByIdEvent(context, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult? Function(BuildContext context)? fetchAddressEvent,
    TResult? Function(int selectedIndex)? selectAddressEvent,
    TResult? Function(String addressId)? saveAddressId,
    TResult? Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult? Function(String pincode)? fetchPincodeAddres,
    TResult? Function(BuildContext context, String id)? deleteAddressEvent,
    TResult? Function()? fetchAddressDefaultIndex,
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult? Function()? makeDefaultResponse,
  }) {
    return fetchAddressByIdEvent?.call(context, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult Function(BuildContext context)? fetchAddressEvent,
    TResult Function(int selectedIndex)? selectAddressEvent,
    TResult Function(String addressId)? saveAddressId,
    TResult Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult Function(String pincode)? fetchPincodeAddres,
    TResult Function(BuildContext context, String id)? deleteAddressEvent,
    TResult Function()? fetchAddressDefaultIndex,
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult Function()? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (fetchAddressByIdEvent != null) {
      return fetchAddressByIdEvent(context, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(FetchAddressEvent value) fetchAddressEvent,
    required TResult Function(SelectAddressEvent value) selectAddressEvent,
    required TResult Function(SaveAddressId value) saveAddressId,
    required TResult Function(FetchAddressByIdEvent value)
        fetchAddressByIdEvent,
    required TResult Function(FetchPincodeAddres value) fetchPincodeAddres,
    required TResult Function(DeleteAddressEvent value) deleteAddressEvent,
    required TResult Function(FetchAddressDefaultIndex value)
        fetchAddressDefaultIndex,
    required TResult Function(UpdateAddress value) updateAddress,
    required TResult Function(_MakeDefaultResponse value) makeDefaultResponse,
  }) {
    return fetchAddressByIdEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult? Function(SelectAddressEvent value)? selectAddressEvent,
    TResult? Function(SaveAddressId value)? saveAddressId,
    TResult? Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult? Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult? Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult? Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult? Function(UpdateAddress value)? updateAddress,
    TResult? Function(_MakeDefaultResponse value)? makeDefaultResponse,
  }) {
    return fetchAddressByIdEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult Function(SelectAddressEvent value)? selectAddressEvent,
    TResult Function(SaveAddressId value)? saveAddressId,
    TResult Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult Function(UpdateAddress value)? updateAddress,
    TResult Function(_MakeDefaultResponse value)? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (fetchAddressByIdEvent != null) {
      return fetchAddressByIdEvent(this);
    }
    return orElse();
  }
}

abstract class FetchAddressByIdEvent implements AddressEvent {
  const factory FetchAddressByIdEvent(
      {required final BuildContext context,
      required final String id}) = _$FetchAddressByIdEventImpl;

  BuildContext get context;
  String get id;
  @JsonKey(ignore: true)
  _$$FetchAddressByIdEventImplCopyWith<_$FetchAddressByIdEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPincodeAddresImplCopyWith<$Res> {
  factory _$$FetchPincodeAddresImplCopyWith(_$FetchPincodeAddresImpl value,
          $Res Function(_$FetchPincodeAddresImpl) then) =
      __$$FetchPincodeAddresImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pincode});
}

/// @nodoc
class __$$FetchPincodeAddresImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$FetchPincodeAddresImpl>
    implements _$$FetchPincodeAddresImplCopyWith<$Res> {
  __$$FetchPincodeAddresImplCopyWithImpl(_$FetchPincodeAddresImpl _value,
      $Res Function(_$FetchPincodeAddresImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pincode = null,
  }) {
    return _then(_$FetchPincodeAddresImpl(
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchPincodeAddresImpl
    with DiagnosticableTreeMixin
    implements FetchPincodeAddres {
  const _$FetchPincodeAddresImpl({required this.pincode});

  @override
  final String pincode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.fetchPincodeAddres(pincode: $pincode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressEvent.fetchPincodeAddres'))
      ..add(DiagnosticsProperty('pincode', pincode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPincodeAddresImpl &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPincodeAddresImplCopyWith<_$FetchPincodeAddresImpl> get copyWith =>
      __$$FetchPincodeAddresImplCopyWithImpl<_$FetchPincodeAddresImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)
        addAddress,
    required TResult Function(BuildContext context) fetchAddressEvent,
    required TResult Function(int selectedIndex) selectAddressEvent,
    required TResult Function(String addressId) saveAddressId,
    required TResult Function(BuildContext context, String id)
        fetchAddressByIdEvent,
    required TResult Function(String pincode) fetchPincodeAddres,
    required TResult Function(BuildContext context, String id)
        deleteAddressEvent,
    required TResult Function() fetchAddressDefaultIndex,
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)
        updateAddress,
    required TResult Function() makeDefaultResponse,
  }) {
    return fetchPincodeAddres(pincode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult? Function(BuildContext context)? fetchAddressEvent,
    TResult? Function(int selectedIndex)? selectAddressEvent,
    TResult? Function(String addressId)? saveAddressId,
    TResult? Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult? Function(String pincode)? fetchPincodeAddres,
    TResult? Function(BuildContext context, String id)? deleteAddressEvent,
    TResult? Function()? fetchAddressDefaultIndex,
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult? Function()? makeDefaultResponse,
  }) {
    return fetchPincodeAddres?.call(pincode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult Function(BuildContext context)? fetchAddressEvent,
    TResult Function(int selectedIndex)? selectAddressEvent,
    TResult Function(String addressId)? saveAddressId,
    TResult Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult Function(String pincode)? fetchPincodeAddres,
    TResult Function(BuildContext context, String id)? deleteAddressEvent,
    TResult Function()? fetchAddressDefaultIndex,
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult Function()? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (fetchPincodeAddres != null) {
      return fetchPincodeAddres(pincode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(FetchAddressEvent value) fetchAddressEvent,
    required TResult Function(SelectAddressEvent value) selectAddressEvent,
    required TResult Function(SaveAddressId value) saveAddressId,
    required TResult Function(FetchAddressByIdEvent value)
        fetchAddressByIdEvent,
    required TResult Function(FetchPincodeAddres value) fetchPincodeAddres,
    required TResult Function(DeleteAddressEvent value) deleteAddressEvent,
    required TResult Function(FetchAddressDefaultIndex value)
        fetchAddressDefaultIndex,
    required TResult Function(UpdateAddress value) updateAddress,
    required TResult Function(_MakeDefaultResponse value) makeDefaultResponse,
  }) {
    return fetchPincodeAddres(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult? Function(SelectAddressEvent value)? selectAddressEvent,
    TResult? Function(SaveAddressId value)? saveAddressId,
    TResult? Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult? Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult? Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult? Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult? Function(UpdateAddress value)? updateAddress,
    TResult? Function(_MakeDefaultResponse value)? makeDefaultResponse,
  }) {
    return fetchPincodeAddres?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult Function(SelectAddressEvent value)? selectAddressEvent,
    TResult Function(SaveAddressId value)? saveAddressId,
    TResult Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult Function(UpdateAddress value)? updateAddress,
    TResult Function(_MakeDefaultResponse value)? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (fetchPincodeAddres != null) {
      return fetchPincodeAddres(this);
    }
    return orElse();
  }
}

abstract class FetchPincodeAddres implements AddressEvent {
  const factory FetchPincodeAddres({required final String pincode}) =
      _$FetchPincodeAddresImpl;

  String get pincode;
  @JsonKey(ignore: true)
  _$$FetchPincodeAddresImplCopyWith<_$FetchPincodeAddresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAddressEventImplCopyWith<$Res> {
  factory _$$DeleteAddressEventImplCopyWith(_$DeleteAddressEventImpl value,
          $Res Function(_$DeleteAddressEventImpl) then) =
      __$$DeleteAddressEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String id});
}

/// @nodoc
class __$$DeleteAddressEventImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$DeleteAddressEventImpl>
    implements _$$DeleteAddressEventImplCopyWith<$Res> {
  __$$DeleteAddressEventImplCopyWithImpl(_$DeleteAddressEventImpl _value,
      $Res Function(_$DeleteAddressEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? id = null,
  }) {
    return _then(_$DeleteAddressEventImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAddressEventImpl
    with DiagnosticableTreeMixin
    implements DeleteAddressEvent {
  const _$DeleteAddressEventImpl({required this.context, required this.id});

  @override
  final BuildContext context;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.deleteAddressEvent(context: $context, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressEvent.deleteAddressEvent'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAddressEventImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAddressEventImplCopyWith<_$DeleteAddressEventImpl> get copyWith =>
      __$$DeleteAddressEventImplCopyWithImpl<_$DeleteAddressEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)
        addAddress,
    required TResult Function(BuildContext context) fetchAddressEvent,
    required TResult Function(int selectedIndex) selectAddressEvent,
    required TResult Function(String addressId) saveAddressId,
    required TResult Function(BuildContext context, String id)
        fetchAddressByIdEvent,
    required TResult Function(String pincode) fetchPincodeAddres,
    required TResult Function(BuildContext context, String id)
        deleteAddressEvent,
    required TResult Function() fetchAddressDefaultIndex,
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)
        updateAddress,
    required TResult Function() makeDefaultResponse,
  }) {
    return deleteAddressEvent(context, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult? Function(BuildContext context)? fetchAddressEvent,
    TResult? Function(int selectedIndex)? selectAddressEvent,
    TResult? Function(String addressId)? saveAddressId,
    TResult? Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult? Function(String pincode)? fetchPincodeAddres,
    TResult? Function(BuildContext context, String id)? deleteAddressEvent,
    TResult? Function()? fetchAddressDefaultIndex,
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult? Function()? makeDefaultResponse,
  }) {
    return deleteAddressEvent?.call(context, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult Function(BuildContext context)? fetchAddressEvent,
    TResult Function(int selectedIndex)? selectAddressEvent,
    TResult Function(String addressId)? saveAddressId,
    TResult Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult Function(String pincode)? fetchPincodeAddres,
    TResult Function(BuildContext context, String id)? deleteAddressEvent,
    TResult Function()? fetchAddressDefaultIndex,
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult Function()? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (deleteAddressEvent != null) {
      return deleteAddressEvent(context, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(FetchAddressEvent value) fetchAddressEvent,
    required TResult Function(SelectAddressEvent value) selectAddressEvent,
    required TResult Function(SaveAddressId value) saveAddressId,
    required TResult Function(FetchAddressByIdEvent value)
        fetchAddressByIdEvent,
    required TResult Function(FetchPincodeAddres value) fetchPincodeAddres,
    required TResult Function(DeleteAddressEvent value) deleteAddressEvent,
    required TResult Function(FetchAddressDefaultIndex value)
        fetchAddressDefaultIndex,
    required TResult Function(UpdateAddress value) updateAddress,
    required TResult Function(_MakeDefaultResponse value) makeDefaultResponse,
  }) {
    return deleteAddressEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult? Function(SelectAddressEvent value)? selectAddressEvent,
    TResult? Function(SaveAddressId value)? saveAddressId,
    TResult? Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult? Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult? Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult? Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult? Function(UpdateAddress value)? updateAddress,
    TResult? Function(_MakeDefaultResponse value)? makeDefaultResponse,
  }) {
    return deleteAddressEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult Function(SelectAddressEvent value)? selectAddressEvent,
    TResult Function(SaveAddressId value)? saveAddressId,
    TResult Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult Function(UpdateAddress value)? updateAddress,
    TResult Function(_MakeDefaultResponse value)? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (deleteAddressEvent != null) {
      return deleteAddressEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteAddressEvent implements AddressEvent {
  const factory DeleteAddressEvent(
      {required final BuildContext context,
      required final String id}) = _$DeleteAddressEventImpl;

  BuildContext get context;
  String get id;
  @JsonKey(ignore: true)
  _$$DeleteAddressEventImplCopyWith<_$DeleteAddressEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAddressDefaultIndexImplCopyWith<$Res> {
  factory _$$FetchAddressDefaultIndexImplCopyWith(
          _$FetchAddressDefaultIndexImpl value,
          $Res Function(_$FetchAddressDefaultIndexImpl) then) =
      __$$FetchAddressDefaultIndexImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAddressDefaultIndexImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$FetchAddressDefaultIndexImpl>
    implements _$$FetchAddressDefaultIndexImplCopyWith<$Res> {
  __$$FetchAddressDefaultIndexImplCopyWithImpl(
      _$FetchAddressDefaultIndexImpl _value,
      $Res Function(_$FetchAddressDefaultIndexImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAddressDefaultIndexImpl
    with DiagnosticableTreeMixin
    implements FetchAddressDefaultIndex {
  const _$FetchAddressDefaultIndexImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.fetchAddressDefaultIndex()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'AddressEvent.fetchAddressDefaultIndex'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAddressDefaultIndexImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)
        addAddress,
    required TResult Function(BuildContext context) fetchAddressEvent,
    required TResult Function(int selectedIndex) selectAddressEvent,
    required TResult Function(String addressId) saveAddressId,
    required TResult Function(BuildContext context, String id)
        fetchAddressByIdEvent,
    required TResult Function(String pincode) fetchPincodeAddres,
    required TResult Function(BuildContext context, String id)
        deleteAddressEvent,
    required TResult Function() fetchAddressDefaultIndex,
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)
        updateAddress,
    required TResult Function() makeDefaultResponse,
  }) {
    return fetchAddressDefaultIndex();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult? Function(BuildContext context)? fetchAddressEvent,
    TResult? Function(int selectedIndex)? selectAddressEvent,
    TResult? Function(String addressId)? saveAddressId,
    TResult? Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult? Function(String pincode)? fetchPincodeAddres,
    TResult? Function(BuildContext context, String id)? deleteAddressEvent,
    TResult? Function()? fetchAddressDefaultIndex,
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult? Function()? makeDefaultResponse,
  }) {
    return fetchAddressDefaultIndex?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult Function(BuildContext context)? fetchAddressEvent,
    TResult Function(int selectedIndex)? selectAddressEvent,
    TResult Function(String addressId)? saveAddressId,
    TResult Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult Function(String pincode)? fetchPincodeAddres,
    TResult Function(BuildContext context, String id)? deleteAddressEvent,
    TResult Function()? fetchAddressDefaultIndex,
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult Function()? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (fetchAddressDefaultIndex != null) {
      return fetchAddressDefaultIndex();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(FetchAddressEvent value) fetchAddressEvent,
    required TResult Function(SelectAddressEvent value) selectAddressEvent,
    required TResult Function(SaveAddressId value) saveAddressId,
    required TResult Function(FetchAddressByIdEvent value)
        fetchAddressByIdEvent,
    required TResult Function(FetchPincodeAddres value) fetchPincodeAddres,
    required TResult Function(DeleteAddressEvent value) deleteAddressEvent,
    required TResult Function(FetchAddressDefaultIndex value)
        fetchAddressDefaultIndex,
    required TResult Function(UpdateAddress value) updateAddress,
    required TResult Function(_MakeDefaultResponse value) makeDefaultResponse,
  }) {
    return fetchAddressDefaultIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult? Function(SelectAddressEvent value)? selectAddressEvent,
    TResult? Function(SaveAddressId value)? saveAddressId,
    TResult? Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult? Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult? Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult? Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult? Function(UpdateAddress value)? updateAddress,
    TResult? Function(_MakeDefaultResponse value)? makeDefaultResponse,
  }) {
    return fetchAddressDefaultIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult Function(SelectAddressEvent value)? selectAddressEvent,
    TResult Function(SaveAddressId value)? saveAddressId,
    TResult Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult Function(UpdateAddress value)? updateAddress,
    TResult Function(_MakeDefaultResponse value)? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (fetchAddressDefaultIndex != null) {
      return fetchAddressDefaultIndex(this);
    }
    return orElse();
  }
}

abstract class FetchAddressDefaultIndex implements AddressEvent {
  const factory FetchAddressDefaultIndex() = _$FetchAddressDefaultIndexImpl;
}

/// @nodoc
abstract class _$$UpdateAddressImplCopyWith<$Res> {
  factory _$$UpdateAddressImplCopyWith(
          _$UpdateAddressImpl value, $Res Function(_$UpdateAddressImpl) then) =
      __$$UpdateAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String addressType,
      String name,
      int mobile,
      int pincode,
      String landmark,
      String addressLine,
      String city,
      String state,
      String country,
      String id});
}

/// @nodoc
class __$$UpdateAddressImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$UpdateAddressImpl>
    implements _$$UpdateAddressImplCopyWith<$Res> {
  __$$UpdateAddressImplCopyWithImpl(
      _$UpdateAddressImpl _value, $Res Function(_$UpdateAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? addressType = null,
    Object? name = null,
    Object? mobile = null,
    Object? pincode = null,
    Object? landmark = null,
    Object? addressLine = null,
    Object? city = null,
    Object? state = null,
    Object? country = null,
    Object? id = null,
  }) {
    return _then(_$UpdateAddressImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int,
      landmark: null == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine: null == addressLine
          ? _value.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateAddressImpl
    with DiagnosticableTreeMixin
    implements UpdateAddress {
  const _$UpdateAddressImpl(
      {required this.context,
      required this.addressType,
      required this.name,
      required this.mobile,
      required this.pincode,
      required this.landmark,
      required this.addressLine,
      required this.city,
      required this.state,
      required this.country,
      required this.id});

  @override
  final BuildContext context;
  @override
  final String addressType;
  @override
  final String name;
  @override
  final int mobile;
  @override
  final int pincode;
  @override
  final String landmark;
  @override
  final String addressLine;
  @override
  final String city;
  @override
  final String state;
  @override
  final String country;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.updateAddress(context: $context, addressType: $addressType, name: $name, mobile: $mobile, pincode: $pincode, landmark: $landmark, addressLine: $addressLine, city: $city, state: $state, country: $country, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressEvent.updateAddress'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('addressType', addressType))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('mobile', mobile))
      ..add(DiagnosticsProperty('pincode', pincode))
      ..add(DiagnosticsProperty('landmark', landmark))
      ..add(DiagnosticsProperty('addressLine', addressLine))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAddressImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.addressLine, addressLine) ||
                other.addressLine == addressLine) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, addressType, name,
      mobile, pincode, landmark, addressLine, city, state, country, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAddressImplCopyWith<_$UpdateAddressImpl> get copyWith =>
      __$$UpdateAddressImplCopyWithImpl<_$UpdateAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)
        addAddress,
    required TResult Function(BuildContext context) fetchAddressEvent,
    required TResult Function(int selectedIndex) selectAddressEvent,
    required TResult Function(String addressId) saveAddressId,
    required TResult Function(BuildContext context, String id)
        fetchAddressByIdEvent,
    required TResult Function(String pincode) fetchPincodeAddres,
    required TResult Function(BuildContext context, String id)
        deleteAddressEvent,
    required TResult Function() fetchAddressDefaultIndex,
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)
        updateAddress,
    required TResult Function() makeDefaultResponse,
  }) {
    return updateAddress(context, addressType, name, mobile, pincode, landmark,
        addressLine, city, state, country, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult? Function(BuildContext context)? fetchAddressEvent,
    TResult? Function(int selectedIndex)? selectAddressEvent,
    TResult? Function(String addressId)? saveAddressId,
    TResult? Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult? Function(String pincode)? fetchPincodeAddres,
    TResult? Function(BuildContext context, String id)? deleteAddressEvent,
    TResult? Function()? fetchAddressDefaultIndex,
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult? Function()? makeDefaultResponse,
  }) {
    return updateAddress?.call(context, addressType, name, mobile, pincode,
        landmark, addressLine, city, state, country, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult Function(BuildContext context)? fetchAddressEvent,
    TResult Function(int selectedIndex)? selectAddressEvent,
    TResult Function(String addressId)? saveAddressId,
    TResult Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult Function(String pincode)? fetchPincodeAddres,
    TResult Function(BuildContext context, String id)? deleteAddressEvent,
    TResult Function()? fetchAddressDefaultIndex,
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult Function()? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(context, addressType, name, mobile, pincode,
          landmark, addressLine, city, state, country, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(FetchAddressEvent value) fetchAddressEvent,
    required TResult Function(SelectAddressEvent value) selectAddressEvent,
    required TResult Function(SaveAddressId value) saveAddressId,
    required TResult Function(FetchAddressByIdEvent value)
        fetchAddressByIdEvent,
    required TResult Function(FetchPincodeAddres value) fetchPincodeAddres,
    required TResult Function(DeleteAddressEvent value) deleteAddressEvent,
    required TResult Function(FetchAddressDefaultIndex value)
        fetchAddressDefaultIndex,
    required TResult Function(UpdateAddress value) updateAddress,
    required TResult Function(_MakeDefaultResponse value) makeDefaultResponse,
  }) {
    return updateAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult? Function(SelectAddressEvent value)? selectAddressEvent,
    TResult? Function(SaveAddressId value)? saveAddressId,
    TResult? Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult? Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult? Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult? Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult? Function(UpdateAddress value)? updateAddress,
    TResult? Function(_MakeDefaultResponse value)? makeDefaultResponse,
  }) {
    return updateAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult Function(SelectAddressEvent value)? selectAddressEvent,
    TResult Function(SaveAddressId value)? saveAddressId,
    TResult Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult Function(UpdateAddress value)? updateAddress,
    TResult Function(_MakeDefaultResponse value)? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(this);
    }
    return orElse();
  }
}

abstract class UpdateAddress implements AddressEvent {
  const factory UpdateAddress(
      {required final BuildContext context,
      required final String addressType,
      required final String name,
      required final int mobile,
      required final int pincode,
      required final String landmark,
      required final String addressLine,
      required final String city,
      required final String state,
      required final String country,
      required final String id}) = _$UpdateAddressImpl;

  BuildContext get context;
  String get addressType;
  String get name;
  int get mobile;
  int get pincode;
  String get landmark;
  String get addressLine;
  String get city;
  String get state;
  String get country;
  String get id;
  @JsonKey(ignore: true)
  _$$UpdateAddressImplCopyWith<_$UpdateAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MakeDefaultResponseImplCopyWith<$Res> {
  factory _$$MakeDefaultResponseImplCopyWith(_$MakeDefaultResponseImpl value,
          $Res Function(_$MakeDefaultResponseImpl) then) =
      __$$MakeDefaultResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MakeDefaultResponseImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$MakeDefaultResponseImpl>
    implements _$$MakeDefaultResponseImplCopyWith<$Res> {
  __$$MakeDefaultResponseImplCopyWithImpl(_$MakeDefaultResponseImpl _value,
      $Res Function(_$MakeDefaultResponseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MakeDefaultResponseImpl
    with DiagnosticableTreeMixin
    implements _MakeDefaultResponse {
  const _$MakeDefaultResponseImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.makeDefaultResponse()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AddressEvent.makeDefaultResponse'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeDefaultResponseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)
        addAddress,
    required TResult Function(BuildContext context) fetchAddressEvent,
    required TResult Function(int selectedIndex) selectAddressEvent,
    required TResult Function(String addressId) saveAddressId,
    required TResult Function(BuildContext context, String id)
        fetchAddressByIdEvent,
    required TResult Function(String pincode) fetchPincodeAddres,
    required TResult Function(BuildContext context, String id)
        deleteAddressEvent,
    required TResult Function() fetchAddressDefaultIndex,
    required TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)
        updateAddress,
    required TResult Function() makeDefaultResponse,
  }) {
    return makeDefaultResponse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult? Function(BuildContext context)? fetchAddressEvent,
    TResult? Function(int selectedIndex)? selectAddressEvent,
    TResult? Function(String addressId)? saveAddressId,
    TResult? Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult? Function(String pincode)? fetchPincodeAddres,
    TResult? Function(BuildContext context, String id)? deleteAddressEvent,
    TResult? Function()? fetchAddressDefaultIndex,
    TResult? Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult? Function()? makeDefaultResponse,
  }) {
    return makeDefaultResponse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country)?
        addAddress,
    TResult Function(BuildContext context)? fetchAddressEvent,
    TResult Function(int selectedIndex)? selectAddressEvent,
    TResult Function(String addressId)? saveAddressId,
    TResult Function(BuildContext context, String id)? fetchAddressByIdEvent,
    TResult Function(String pincode)? fetchPincodeAddres,
    TResult Function(BuildContext context, String id)? deleteAddressEvent,
    TResult Function()? fetchAddressDefaultIndex,
    TResult Function(
            BuildContext context,
            String addressType,
            String name,
            int mobile,
            int pincode,
            String landmark,
            String addressLine,
            String city,
            String state,
            String country,
            String id)?
        updateAddress,
    TResult Function()? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (makeDefaultResponse != null) {
      return makeDefaultResponse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(FetchAddressEvent value) fetchAddressEvent,
    required TResult Function(SelectAddressEvent value) selectAddressEvent,
    required TResult Function(SaveAddressId value) saveAddressId,
    required TResult Function(FetchAddressByIdEvent value)
        fetchAddressByIdEvent,
    required TResult Function(FetchPincodeAddres value) fetchPincodeAddres,
    required TResult Function(DeleteAddressEvent value) deleteAddressEvent,
    required TResult Function(FetchAddressDefaultIndex value)
        fetchAddressDefaultIndex,
    required TResult Function(UpdateAddress value) updateAddress,
    required TResult Function(_MakeDefaultResponse value) makeDefaultResponse,
  }) {
    return makeDefaultResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult? Function(SelectAddressEvent value)? selectAddressEvent,
    TResult? Function(SaveAddressId value)? saveAddressId,
    TResult? Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult? Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult? Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult? Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult? Function(UpdateAddress value)? updateAddress,
    TResult? Function(_MakeDefaultResponse value)? makeDefaultResponse,
  }) {
    return makeDefaultResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(FetchAddressEvent value)? fetchAddressEvent,
    TResult Function(SelectAddressEvent value)? selectAddressEvent,
    TResult Function(SaveAddressId value)? saveAddressId,
    TResult Function(FetchAddressByIdEvent value)? fetchAddressByIdEvent,
    TResult Function(FetchPincodeAddres value)? fetchPincodeAddres,
    TResult Function(DeleteAddressEvent value)? deleteAddressEvent,
    TResult Function(FetchAddressDefaultIndex value)? fetchAddressDefaultIndex,
    TResult Function(UpdateAddress value)? updateAddress,
    TResult Function(_MakeDefaultResponse value)? makeDefaultResponse,
    required TResult orElse(),
  }) {
    if (makeDefaultResponse != null) {
      return makeDefaultResponse(this);
    }
    return orElse();
  }
}

abstract class _MakeDefaultResponse implements AddressEvent {
  const factory _MakeDefaultResponse() = _$MakeDefaultResponseImpl;
}

/// @nodoc
mixin _$AddressState {
  String? get successMessage => throw _privateConstructorUsedError;
  bool get updateAddressSuccess => throw _privateConstructorUsedError;
  bool get addAddressSuccess => throw _privateConstructorUsedError;
  String? get failMessage => throw _privateConstructorUsedError;
  AddressModel? get addressModel => throw _privateConstructorUsedError;
  int? get selectedIndex => throw _privateConstructorUsedError;
  String? get addressId => throw _privateConstructorUsedError;
  AddressIdModel? get addressIdModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  PincodeAddressModel? get pincodeAddressModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressStateCopyWith<AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
  @useResult
  $Res call(
      {String? successMessage,
      bool updateAddressSuccess,
      bool addAddressSuccess,
      String? failMessage,
      AddressModel? addressModel,
      int? selectedIndex,
      String? addressId,
      AddressIdModel? addressIdModel,
      bool isLoading,
      PincodeAddressModel? pincodeAddressModel});

  $AddressModelCopyWith<$Res>? get addressModel;
  $AddressIdModelCopyWith<$Res>? get addressIdModel;
  $PincodeAddressModelCopyWith<$Res>? get pincodeAddressModel;
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = freezed,
    Object? updateAddressSuccess = null,
    Object? addAddressSuccess = null,
    Object? failMessage = freezed,
    Object? addressModel = freezed,
    Object? selectedIndex = freezed,
    Object? addressId = freezed,
    Object? addressIdModel = freezed,
    Object? isLoading = null,
    Object? pincodeAddressModel = freezed,
  }) {
    return _then(_value.copyWith(
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAddressSuccess: null == updateAddressSuccess
          ? _value.updateAddressSuccess
          : updateAddressSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      addAddressSuccess: null == addAddressSuccess
          ? _value.addAddressSuccess
          : addAddressSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failMessage: freezed == failMessage
          ? _value.failMessage
          : failMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      addressModel: freezed == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      addressIdModel: freezed == addressIdModel
          ? _value.addressIdModel
          : addressIdModel // ignore: cast_nullable_to_non_nullable
              as AddressIdModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pincodeAddressModel: freezed == pincodeAddressModel
          ? _value.pincodeAddressModel
          : pincodeAddressModel // ignore: cast_nullable_to_non_nullable
              as PincodeAddressModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res>? get addressModel {
    if (_value.addressModel == null) {
      return null;
    }

    return $AddressModelCopyWith<$Res>(_value.addressModel!, (value) {
      return _then(_value.copyWith(addressModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressIdModelCopyWith<$Res>? get addressIdModel {
    if (_value.addressIdModel == null) {
      return null;
    }

    return $AddressIdModelCopyWith<$Res>(_value.addressIdModel!, (value) {
      return _then(_value.copyWith(addressIdModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PincodeAddressModelCopyWith<$Res>? get pincodeAddressModel {
    if (_value.pincodeAddressModel == null) {
      return null;
    }

    return $PincodeAddressModelCopyWith<$Res>(_value.pincodeAddressModel!,
        (value) {
      return _then(_value.copyWith(pincodeAddressModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? successMessage,
      bool updateAddressSuccess,
      bool addAddressSuccess,
      String? failMessage,
      AddressModel? addressModel,
      int? selectedIndex,
      String? addressId,
      AddressIdModel? addressIdModel,
      bool isLoading,
      PincodeAddressModel? pincodeAddressModel});

  @override
  $AddressModelCopyWith<$Res>? get addressModel;
  @override
  $AddressIdModelCopyWith<$Res>? get addressIdModel;
  @override
  $PincodeAddressModelCopyWith<$Res>? get pincodeAddressModel;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = freezed,
    Object? updateAddressSuccess = null,
    Object? addAddressSuccess = null,
    Object? failMessage = freezed,
    Object? addressModel = freezed,
    Object? selectedIndex = freezed,
    Object? addressId = freezed,
    Object? addressIdModel = freezed,
    Object? isLoading = null,
    Object? pincodeAddressModel = freezed,
  }) {
    return _then(_$InitialImpl(
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAddressSuccess: null == updateAddressSuccess
          ? _value.updateAddressSuccess
          : updateAddressSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      addAddressSuccess: null == addAddressSuccess
          ? _value.addAddressSuccess
          : addAddressSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failMessage: freezed == failMessage
          ? _value.failMessage
          : failMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      addressModel: freezed == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      addressIdModel: freezed == addressIdModel
          ? _value.addressIdModel
          : addressIdModel // ignore: cast_nullable_to_non_nullable
              as AddressIdModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pincodeAddressModel: freezed == pincodeAddressModel
          ? _value.pincodeAddressModel
          : pincodeAddressModel // ignore: cast_nullable_to_non_nullable
              as PincodeAddressModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {required this.successMessage,
      required this.updateAddressSuccess,
      required this.addAddressSuccess,
      required this.failMessage,
      required this.addressModel,
      required this.selectedIndex,
      required this.addressId,
      required this.addressIdModel,
      required this.isLoading,
      required this.pincodeAddressModel});

  @override
  final String? successMessage;
  @override
  final bool updateAddressSuccess;
  @override
  final bool addAddressSuccess;
  @override
  final String? failMessage;
  @override
  final AddressModel? addressModel;
  @override
  final int? selectedIndex;
  @override
  final String? addressId;
  @override
  final AddressIdModel? addressIdModel;
  @override
  final bool isLoading;
  @override
  final PincodeAddressModel? pincodeAddressModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressState(successMessage: $successMessage, updateAddressSuccess: $updateAddressSuccess, addAddressSuccess: $addAddressSuccess, failMessage: $failMessage, addressModel: $addressModel, selectedIndex: $selectedIndex, addressId: $addressId, addressIdModel: $addressIdModel, isLoading: $isLoading, pincodeAddressModel: $pincodeAddressModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressState'))
      ..add(DiagnosticsProperty('successMessage', successMessage))
      ..add(DiagnosticsProperty('updateAddressSuccess', updateAddressSuccess))
      ..add(DiagnosticsProperty('addAddressSuccess', addAddressSuccess))
      ..add(DiagnosticsProperty('failMessage', failMessage))
      ..add(DiagnosticsProperty('addressModel', addressModel))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex))
      ..add(DiagnosticsProperty('addressId', addressId))
      ..add(DiagnosticsProperty('addressIdModel', addressIdModel))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('pincodeAddressModel', pincodeAddressModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.updateAddressSuccess, updateAddressSuccess) ||
                other.updateAddressSuccess == updateAddressSuccess) &&
            (identical(other.addAddressSuccess, addAddressSuccess) ||
                other.addAddressSuccess == addAddressSuccess) &&
            (identical(other.failMessage, failMessage) ||
                other.failMessage == failMessage) &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.addressIdModel, addressIdModel) ||
                other.addressIdModel == addressIdModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.pincodeAddressModel, pincodeAddressModel) ||
                other.pincodeAddressModel == pincodeAddressModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      successMessage,
      updateAddressSuccess,
      addAddressSuccess,
      failMessage,
      addressModel,
      selectedIndex,
      addressId,
      addressIdModel,
      isLoading,
      pincodeAddressModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AddressState {
  const factory _Initial(
      {required final String? successMessage,
      required final bool updateAddressSuccess,
      required final bool addAddressSuccess,
      required final String? failMessage,
      required final AddressModel? addressModel,
      required final int? selectedIndex,
      required final String? addressId,
      required final AddressIdModel? addressIdModel,
      required final bool isLoading,
      required final PincodeAddressModel? pincodeAddressModel}) = _$InitialImpl;

  @override
  String? get successMessage;
  @override
  bool get updateAddressSuccess;
  @override
  bool get addAddressSuccess;
  @override
  String? get failMessage;
  @override
  AddressModel? get addressModel;
  @override
  int? get selectedIndex;
  @override
  String? get addressId;
  @override
  AddressIdModel? get addressIdModel;
  @override
  bool get isLoading;
  @override
  PincodeAddressModel? get pincodeAddressModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

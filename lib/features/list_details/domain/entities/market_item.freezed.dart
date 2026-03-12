// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketItem {

 String get id; String get listId; String get name; DateTime get createdAt; bool get isBought;
/// Create a copy of MarketItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketItemCopyWith<MarketItem> get copyWith => _$MarketItemCopyWithImpl<MarketItem>(this as MarketItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketItem&&(identical(other.id, id) || other.id == id)&&(identical(other.listId, listId) || other.listId == listId)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isBought, isBought) || other.isBought == isBought));
}


@override
int get hashCode => Object.hash(runtimeType,id,listId,name,createdAt,isBought);

@override
String toString() {
  return 'MarketItem(id: $id, listId: $listId, name: $name, createdAt: $createdAt, isBought: $isBought)';
}


}

/// @nodoc
abstract mixin class $MarketItemCopyWith<$Res>  {
  factory $MarketItemCopyWith(MarketItem value, $Res Function(MarketItem) _then) = _$MarketItemCopyWithImpl;
@useResult
$Res call({
 String id, String listId, String name, DateTime createdAt, bool isBought
});




}
/// @nodoc
class _$MarketItemCopyWithImpl<$Res>
    implements $MarketItemCopyWith<$Res> {
  _$MarketItemCopyWithImpl(this._self, this._then);

  final MarketItem _self;
  final $Res Function(MarketItem) _then;

/// Create a copy of MarketItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listId = null,Object? name = null,Object? createdAt = null,Object? isBought = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,isBought: null == isBought ? _self.isBought : isBought // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketItem].
extension MarketItemPatterns on MarketItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketItem value)  $default,){
final _that = this;
switch (_that) {
case _MarketItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketItem value)?  $default,){
final _that = this;
switch (_that) {
case _MarketItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String listId,  String name,  DateTime createdAt,  bool isBought)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketItem() when $default != null:
return $default(_that.id,_that.listId,_that.name,_that.createdAt,_that.isBought);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String listId,  String name,  DateTime createdAt,  bool isBought)  $default,) {final _that = this;
switch (_that) {
case _MarketItem():
return $default(_that.id,_that.listId,_that.name,_that.createdAt,_that.isBought);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String listId,  String name,  DateTime createdAt,  bool isBought)?  $default,) {final _that = this;
switch (_that) {
case _MarketItem() when $default != null:
return $default(_that.id,_that.listId,_that.name,_that.createdAt,_that.isBought);case _:
  return null;

}
}

}

/// @nodoc


class _MarketItem implements MarketItem {
  const _MarketItem({required this.id, required this.listId, required this.name, required this.createdAt, this.isBought = false});
  

@override final  String id;
@override final  String listId;
@override final  String name;
@override final  DateTime createdAt;
@override@JsonKey() final  bool isBought;

/// Create a copy of MarketItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketItemCopyWith<_MarketItem> get copyWith => __$MarketItemCopyWithImpl<_MarketItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketItem&&(identical(other.id, id) || other.id == id)&&(identical(other.listId, listId) || other.listId == listId)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isBought, isBought) || other.isBought == isBought));
}


@override
int get hashCode => Object.hash(runtimeType,id,listId,name,createdAt,isBought);

@override
String toString() {
  return 'MarketItem(id: $id, listId: $listId, name: $name, createdAt: $createdAt, isBought: $isBought)';
}


}

/// @nodoc
abstract mixin class _$MarketItemCopyWith<$Res> implements $MarketItemCopyWith<$Res> {
  factory _$MarketItemCopyWith(_MarketItem value, $Res Function(_MarketItem) _then) = __$MarketItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String listId, String name, DateTime createdAt, bool isBought
});




}
/// @nodoc
class __$MarketItemCopyWithImpl<$Res>
    implements _$MarketItemCopyWith<$Res> {
  __$MarketItemCopyWithImpl(this._self, this._then);

  final _MarketItem _self;
  final $Res Function(_MarketItem) _then;

/// Create a copy of MarketItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listId = null,Object? name = null,Object? createdAt = null,Object? isBought = null,}) {
  return _then(_MarketItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,isBought: null == isBought ? _self.isBought : isBought // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

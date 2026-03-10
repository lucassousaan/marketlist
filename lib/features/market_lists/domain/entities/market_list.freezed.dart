// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketList {

 String get id; String get name; int get totalItems; int get completedItems;
/// Create a copy of MarketList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketListCopyWith<MarketList> get copyWith => _$MarketListCopyWithImpl<MarketList>(this as MarketList, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketList&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.completedItems, completedItems) || other.completedItems == completedItems));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,totalItems,completedItems);

@override
String toString() {
  return 'MarketList(id: $id, name: $name, totalItems: $totalItems, completedItems: $completedItems)';
}


}

/// @nodoc
abstract mixin class $MarketListCopyWith<$Res>  {
  factory $MarketListCopyWith(MarketList value, $Res Function(MarketList) _then) = _$MarketListCopyWithImpl;
@useResult
$Res call({
 String id, String name, int totalItems, int completedItems
});




}
/// @nodoc
class _$MarketListCopyWithImpl<$Res>
    implements $MarketListCopyWith<$Res> {
  _$MarketListCopyWithImpl(this._self, this._then);

  final MarketList _self;
  final $Res Function(MarketList) _then;

/// Create a copy of MarketList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? totalItems = null,Object? completedItems = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,completedItems: null == completedItems ? _self.completedItems : completedItems // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketList].
extension MarketListPatterns on MarketList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketList value)  $default,){
final _that = this;
switch (_that) {
case _MarketList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketList value)?  $default,){
final _that = this;
switch (_that) {
case _MarketList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int totalItems,  int completedItems)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketList() when $default != null:
return $default(_that.id,_that.name,_that.totalItems,_that.completedItems);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int totalItems,  int completedItems)  $default,) {final _that = this;
switch (_that) {
case _MarketList():
return $default(_that.id,_that.name,_that.totalItems,_that.completedItems);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int totalItems,  int completedItems)?  $default,) {final _that = this;
switch (_that) {
case _MarketList() when $default != null:
return $default(_that.id,_that.name,_that.totalItems,_that.completedItems);case _:
  return null;

}
}

}

/// @nodoc


class _MarketList implements MarketList {
  const _MarketList({required this.id, required this.name, this.totalItems = 0, this.completedItems = 0});
  

@override final  String id;
@override final  String name;
@override@JsonKey() final  int totalItems;
@override@JsonKey() final  int completedItems;

/// Create a copy of MarketList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketListCopyWith<_MarketList> get copyWith => __$MarketListCopyWithImpl<_MarketList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketList&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.completedItems, completedItems) || other.completedItems == completedItems));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,totalItems,completedItems);

@override
String toString() {
  return 'MarketList(id: $id, name: $name, totalItems: $totalItems, completedItems: $completedItems)';
}


}

/// @nodoc
abstract mixin class _$MarketListCopyWith<$Res> implements $MarketListCopyWith<$Res> {
  factory _$MarketListCopyWith(_MarketList value, $Res Function(_MarketList) _then) = __$MarketListCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int totalItems, int completedItems
});




}
/// @nodoc
class __$MarketListCopyWithImpl<$Res>
    implements _$MarketListCopyWith<$Res> {
  __$MarketListCopyWithImpl(this._self, this._then);

  final _MarketList _self;
  final $Res Function(_MarketList) _then;

/// Create a copy of MarketList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? totalItems = null,Object? completedItems = null,}) {
  return _then(_MarketList(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,completedItems: null == completedItems ? _self.completedItems : completedItems // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

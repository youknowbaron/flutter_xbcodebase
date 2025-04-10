// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$collectionNotifierHash() =>
    r'3785d64ca2957b3cb398121acb03e52944b6f693';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$CollectionNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Vocabulary>> {
  late final String collectionId;

  FutureOr<List<Vocabulary>> build(
    String collectionId,
  );
}

/// See also [CollectionNotifier].
@ProviderFor(CollectionNotifier)
const collectionNotifierProvider = CollectionNotifierFamily();

/// See also [CollectionNotifier].
class CollectionNotifierFamily extends Family<AsyncValue<List<Vocabulary>>> {
  /// See also [CollectionNotifier].
  const CollectionNotifierFamily();

  /// See also [CollectionNotifier].
  CollectionNotifierProvider call(
    String collectionId,
  ) {
    return CollectionNotifierProvider(
      collectionId,
    );
  }

  @override
  CollectionNotifierProvider getProviderOverride(
    covariant CollectionNotifierProvider provider,
  ) {
    return call(
      provider.collectionId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'collectionNotifierProvider';
}

/// See also [CollectionNotifier].
class CollectionNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    CollectionNotifier, List<Vocabulary>> {
  /// See also [CollectionNotifier].
  CollectionNotifierProvider(
    String collectionId,
  ) : this._internal(
          () => CollectionNotifier()..collectionId = collectionId,
          from: collectionNotifierProvider,
          name: r'collectionNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$collectionNotifierHash,
          dependencies: CollectionNotifierFamily._dependencies,
          allTransitiveDependencies:
              CollectionNotifierFamily._allTransitiveDependencies,
          collectionId: collectionId,
        );

  CollectionNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.collectionId,
  }) : super.internal();

  final String collectionId;

  @override
  FutureOr<List<Vocabulary>> runNotifierBuild(
    covariant CollectionNotifier notifier,
  ) {
    return notifier.build(
      collectionId,
    );
  }

  @override
  Override overrideWith(CollectionNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: CollectionNotifierProvider._internal(
        () => create()..collectionId = collectionId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        collectionId: collectionId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CollectionNotifier, List<Vocabulary>>
      createElement() {
    return _CollectionNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CollectionNotifierProvider &&
        other.collectionId == collectionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collectionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CollectionNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<Vocabulary>> {
  /// The parameter `collectionId` of this provider.
  String get collectionId;
}

class _CollectionNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CollectionNotifier,
        List<Vocabulary>> with CollectionNotifierRef {
  _CollectionNotifierProviderElement(super.provider);

  @override
  String get collectionId =>
      (origin as CollectionNotifierProvider).collectionId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

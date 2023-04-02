enum LoadStatusEnum { initial, success, error, loading }

extension LoadStatusEnumX on LoadStatusEnum {
  bool get isInitial => this == LoadStatusEnum.initial;
  bool get isLoading => this == LoadStatusEnum.loading;
  bool get isSuccess => this == LoadStatusEnum.success;
  bool get isError => this == LoadStatusEnum.error;
}

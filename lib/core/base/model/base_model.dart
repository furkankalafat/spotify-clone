abstract class BaseModel {
  Map<String, dynamic> toJson();

  static T? fromJson<T extends BaseModel>(dynamic map) {
    switch (T) {
      //TODO Models will add in cases like below.
      /* case User:
        return User.fromJson(map) as T; */
      case BaseModel:
        return null;
      default:
        final err = "PLEASE ADD fromJson case for $T in BaseModel class";
        throw UnimplementedError(err);
    }
  }
}

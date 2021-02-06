part of 'models.dart';

class MovieVideo extends Equatable {
  final String key;

  MovieVideo({@required this.key});

  factory MovieVideo.fromJson(Map<String, dynamic> json) =>
      MovieVideo(key: json['key'].toString());

  @override
  List<Object> get props => [key];
}

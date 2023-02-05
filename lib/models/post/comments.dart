class Comments {
  final int idPost;
  final String avatar;
  final String name;
  final String titleComments;
  final String timeComments;
  final int loveComments;
  Comments(
      {required this.idPost,
      required this.avatar,
      required this.name,
      required this.timeComments,
      required this.titleComments,
      required this.loveComments});
}

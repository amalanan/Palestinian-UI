import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../info.dart';
import '../../models/models.dart';
import '../../responsive/responsive_layout.dart';
import 'home_page_screens.dart';

class HomePageTabletLayout extends StatelessWidget {
  const HomePageTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ResponsiveLayout(
        mobileScreenLayout: (context) => HomePageMobileLayout(),
        webScreenLayout: (context) => HomePageWebLayout(),
        tabletScreenLayout:
            (context) => Row(
              children: [
                Expanded(child: HomePageMobileLayout()),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, right: 6),
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return Container(height: 1, color: Colors.black);
                      },
                      scrollDirection: Axis.vertical,
                      itemCount: posts.length,
                      itemBuilder: (context, index) {
                        final post = posts[index];
                        return Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage(
                                        post.user.image,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            post.user.name,
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '${post.timeAgo} • ',
                                                style: TextStyle(
                                                  color: Colors.grey[600],
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Icon(
                                                Icons.public,
                                                color: Colors.grey[600],
                                                size: 12,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.more_horiz),
                                      onPressed: () => print('More'),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Text(
                                  post.caption,
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: _PostStates(post: post),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}

class _PostStates extends StatelessWidget {
  const _PostStates({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.thumb_up, size: 10, color: Colors.white),
            ),
            SizedBox(width: 4),
            Expanded(
              child: Text(
                '${post.likes}',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            Text(
              '${post.comments} Comments',
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(width: 8),
            Text(
              '${post.shares} Shares',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
        Divider(),
        Row(
          children: [
            _PostButton(
              icon: Icon(
                Icons.thumb_up_off_alt_rounded,
                color: Colors.grey[600],
                size: 20,
              ),
              label: 'Like',
              onTap: () {
                return print('like');
              },
            ),
            _PostButton(
              icon: Icon(Icons.comment, color: Colors.grey[600], size: 20),
              label: 'Comment',
              onTap: () {
                return print('Comment');
              },
            ),
            _PostButton(
              icon: Icon(Icons.share, color: Colors.grey[600], size: 25),
              label: 'Share',
              onTap: () {
                return print('Share');
              },
            ),
          ],
        ),
      ],
    );
  }
}

class _PostButton extends StatelessWidget {
  const _PostButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final Icon icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            height: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [icon, SizedBox(width: 4), Text(label)],
            ),
          ),
        ),
      ),
    );
  }
}
